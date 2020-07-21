/**
 * /tracks : all tracks
 * /tracks?albumID={albumID} : Search for tracks that have this albumID
 * /tracks?name={name} : Search for tracks that matches this name (fuzzy match)
 * /tracks?length={length} : Search for tracks are longer than X seconds.
 * /tracks?type={type} : Search for tracks that match this type (exact match)
 * /tracks?artistID={artistID} : Search for tracks that have this artistId
 * /tracks?artistName={artistName} : Search for tracks by artist name (fuzzy match)
 * /tracks?location={location} : Search for tracks by country name/city name/state name (fuzzy match)
 * /tracks?lyric={lyric} : Search for tracks that have these lyrics as the main line (fuzzy match)
 */

export async function tracksBy(req, res) {
  let conn;
  const albumID = parseInt(req.query.albumID, 10);
  const artistID = parseInt(req.query.artistid, 10);
  const { name } = req.query;
  const { length } = req.query;
  const { type } = req.query;
  // ignore for now
  const { artistName } = req.query;
  const { location } = req.query;
  const { lyric } = req.query;

  const { query, params } = getTrackQuery({
    albumID,
    artistID,
    name,
    length,
    type,
    artistName,
    location,
    lyric,
  });

  // temp for testing
  console.log(albumID);
  console.log(artistID);
  console.log(name);
  console.log(length);
  console.log(type);
  console.log(artistName);
  console.log(location);
  console.log(lyric);

  console.log(query);
  console.log(params);

  try {
    conn = await req.app.locals.pool.getConnection();
    // console.log(await conn.query(q, params));
    const result = await conn.query(query, params);
    // console.log(result);
    res.json(result);
  } catch (err) {
    res.json(`error${err}`);
    return;
  } finally {
    if (conn) {
      conn.end();
    }
  }
}

/**
 * function: byTrackID
 * sends the track with the given id
 * @param {Request} req
 * @param {Response} res
 */
export async function byTrackID(req, res) {
  let conn;
  const trackID = parseInt(req.params.trackID, 10);
  const { query, params } = getTrackQuery({ trackID });

  console.log(query);
  console.log(params);

  try {
    conn = await req.app.locals.pool.getConnection();
    const result = await conn.query(query, params);
    res.json(result);
    return;
  } catch (err) {
    res.json(`error${err}`);
    return;
  } finally {
    if (conn) {
      conn.end();
    }
  }
}

/**
 * function: getAlbumQuery
 * creates query and parameters for an album query to the database
 * currently does not work with prepared statements
 *
 * @param {String} albumID - string for fuzzy search
 * @param {String} artistID - tag for fuzzy search
 * @param {Int} name - parentID for exact search
 * @param {String} length - updated after given date
 * @param {String} type - keyword for fuzzy search
 * @param {Int} trackID - albumID for exact search
 * @param {String} artistName - artist name for fuzzy search
 * @param {String} location - location (country, city, or state) for fuzzy search
 * @param {String} lyric - main line lyric for fuzzy search
 *
 * @return {Object[String, Array]} = template statement, parameters for template statement
 */

function getTrackQuery({
  albumID,
  artistID,
  name,
  length,
  type,
  trackID,
  artistName,
  location,
  lyric,
}) {
  const cols = `ID, Title, Media, Length, Updated`;
  const params = [];
  let q = '';
  const basicQuery = `SELECT ${cols} FROM Track LEFT JOIN TrackAlbum ON TrackAlbum.Album = Track.ID WHERE 1=1`;
  // album id
  if (albumID) {
    q += ` AND Album = ?`;
    params.push(albumID.toString());
  }
  // artist id
  if (artistID) {
    q += ` AND Artist = ?`;
    params.push(artistID.toString());
  }
  // name
  if (name) {
    q += ` AND Title LIKE ?`;
    params.push(`%${name}%`);
  }
  // length
  if (length) {
    q += ` AND Length > ?`;
    params.push(`${length}`);
  }
  // type
  if (type) {
    q += ` AND Type = ?`;
    params.push(`${type}`);
  }
  // track id
  if (trackID) {
    q += ` AND ID = ?`;
    params.push(trackID.toString());
  }
  // artist's name
  // two ID columns
  // if (artistName) {
  //   cols = `* `
  //   basicQuery = `SELECT ${cols} FROM Track ` +
  //   `LEFT JOIN TrackAlbum ON TrackAlbum.Album = Track.ID `+
  //   `LEFT JOIN Artist ON Track.Artist = Artist.ID `+
  //   `WHERE Name = ?;`;
  //   params.push(`${artistName}`)
  // }
  // //location
  // if (location) {
  //   // cols = `* `
  //   // basicQuery = `SELECT ${cols} FROM Track ` +
  //   // `LEFT JOIN TrackAlbum ON TrackAlbum.Album = Track.ID `+
  //   // `LEFT JOIN Artist ON Track.Artist = Artist.ID `+
  //   // `WHERE Name = '${artistName}'; `;
  // }
  // //lyric
  // if (lyric) {

  // }
  // return an object with a query and its parameters
  return { query: `${basicQuery + q};`, params };
}

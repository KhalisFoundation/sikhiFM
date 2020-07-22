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
  const { name, length, type, artistName, location, lyric } = req.query;
  const { query, params } = getTrackQuery({
    albumID,
    artistID,
    name,
    length,
    type,
    artistName,
    location, 
    lyric
  });

  console.log(location);
  console.log(query, params);

  try {
    conn = await req.app.locals.pool.getConnection();
    const result = await conn.query(query, params);
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

function getTrackQuery({ albumID, artistID, name, length, type, trackID, artistName, location, lyric }) {
  var cols = `Track.ID, Track.Title, Track.Media, TrackAlbum.Track, TrackAlbum.Album, Track.Length, Track.Updated`;
  var params = [];
  var q = '';
  var basicQuery = `FROM Track LEFT JOIN TrackAlbum ON TrackAlbum.Album = Track.ID WHERE 1=1`;
  //artist's name
  if(artistName) {
    cols +=  `Artist.ID as ArtistID, Artist.Name, Artist.NameGurmukhi, Artist.Description, `+
    `Artist.Detail, Artist.Tags as ArtistTags, Artist.Keywords as ArtistKeywords `;
    basicQuery =  `FROM Track `+
    `LEFT JOIN Artist ON Track.Artist = Artist.ID `+
    `WHERE Artist.Name Like ?`
    params.push(`%${artistName}%`)
  }
  //location
  if(location) {
    basicQuery = `SELECT Track.ID, Track.Title, Track.Media, Track.Length, Track.Updated, ` +
    `Location.City, Location.State, Location.Country, Location.Nickname as LocationNickname ` +
    `FROM Track ` + 
    `LEFT JOIN Location ON Track.Location = Location.ID ` +
    `WHERE City Like ? ` +
    `OR State LIKE ? ` +
    `OR Country LIKE ?`;
    params.push(`%${location}%`);
    params.push(`%${location}%`);
    params.push(`%${location}%`);
  }
  // album id
  if (albumID) {
    q += ' AND Album = ?';
    params.push(albumID.toString());
  }
  // artist id
  if (artistID) {
    q += ' AND Artist = ?';
    params.push(artistID.toString());
  }
  // name
  if (name) {
    q += ' AND Title LIKE ?';
    params.push(`%${name}%`);
  }
  // length
  if (length) {
    q += ' AND Length > ?';
    params.push(`${length}`);
  }
  // type
  if (type) {
    q += ` AND Type = ?`;
    params.push(`${type}`);
  }
  // track id
  if (trackID) {
    q += ' AND ID = ?';
    params.push(trackID.toString());
  }
  
  //lyric
  if(lyric) {
    //basicQuery =
    params.push(lyric)
  }
  return { query: `SELECT ${cols + basicQuery + q};`, params };
}

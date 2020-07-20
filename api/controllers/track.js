import { query } from 'express';

/**
 * /tracks : all tracks
 * /tracks?albumid={albumID} : Search for tracks that have this albumID
 * /tracks?nameincl={nameIncludes} : Search for tracks that matches this name (fuzzy match)
 * /tracks?lengthgreater={length} : Search for tracks are longer than X seconds.
 * /tracks?type={type} : Search for tracks that match this type (exact match)
 * /tracks?artistid={artistid} : Search for tracks that have this artistId
 */
export async function tracksBy(req, res) {
  let conn;
  const albumID = parseInt(req.query.albumid, 10);
  const artistID = parseInt(req.query.artistid, 10);
  const nameIncludes = req.query.nameincl;
  const length = req.query.length;
  const type = req.query.type;

  console.log(albumID);
  console.log(artistID);
  console.log(nameIncludes);
  console.log(length);
  console.log(type);

  const queryRes = getTrackQuery(albumID, artistID, nameIncludes, length, type, null);
  const q = queryRes[0];
  const params = queryRes[1];

  // temp for testing
  console.log(albumID);
  console.log(artistID);
  console.log(nameIncludes);
  console.log(length);
  console.log(type);

  console.log(q);
  console.log(params);
  try {
    conn = await req.app.locals.pool.getConnection();
    // console.log(await conn.query(q, params));
    const result = await conn.query(q);
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
  const queryRes = getTrackQuery(null, null, null, null, null, trackID);
  const q = queryRes[0];
  const params = queryRes[1];
  console.log(q);
  console.log(params);

  try {
    conn = await req.app.locals.pool.getConnection();
    const result = await conn.query(q);
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
 *
 * @return {Object[String, Array]} = template statement, parameters for template statement
 */
function getTrackQuery(albumID, artistID, name, length, type, trackID) {
  const cols = `ID, Title, Media, Length, Updated`;
  const params = [];
  let q = '';
  const basicQuery = `SELECT * FROM Track LEFT JOIN TrackAlbum ON TrackAlbum.Album = Track.ID WHERE 1=1`;
  // album id
  if (albumID) {
    q += ` AND Album = ${albumID}`;
    params.push(albumID);
  }
  // artist id
  // how does one search within a json arr
  if (artistID) {
    q += ` AND Artist = ${artistID}`;
    params.push(artistID);
  }
  // name
  if (name) {
    q += ` AND Title LIKE '%${name}%'`;
    params.push(name);
  }
  // length
  if (length) {
    q += ` AND Length > '${length}'`;
    params.push(length);
  }
  // type
  if (type) {
    q += ` AND Type = '${type}'`;
    params.push(type);
  }
  // trackID
  if (trackID) {
    q += ` AND ID = ${trackID}`;
    params.push(trackID);
  }
  // return an object with a query and its parameters
  return [`${basicQuery + q};`, params];
}

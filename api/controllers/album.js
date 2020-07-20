// function: allAlbums
// sends all parent albums

import { query } from 'express';

/**
 * /albums : all albums
 * /albums?nameincl={name} : Search for album that matches this name (fuzzy match)
 * /albums?tag={tag} : Search for albums that have these tags (fuzzy matches)
 * /albums?keyword={keyword} : Search for albums that have these keywords (fuzzy matches)
 * /albums?parentid={parentid} : Search for albums that has this albumId as a parent.
 * /albums?updatedafter={date} : Search for albums that were last updated after this date.
 */
export async function albumsBy(req, res) {
  let conn;
  const nameIncludes = req.query.nameincl;
  // lint/prettier keeps trying to {tag} but everything breaks then
  //const { tag } = req.query;

  const tag = req.query.tag;
  const parentID = parseInt(req.query.parentid, 10);
  const date = req.query.date;
  const { keyword } = req.query;
  const queryRes = getAlbumQuery(nameIncludes, tag, parentID, date, keyword, null);
  const q = queryRes[0];
  const params = queryRes[1];

  // temp for testing
  console.log(nameIncludes);
  console.log(tag);
  console.log(parentID);
  console.log(date);
  console.log(keyword);
  console.log(q);
  console.log(params);
  try {
    conn = await req.app.locals.pool.getConnection();
    // console.log(await conn.query(q, params));
    const result = await conn.query(q);
    //console.log(result);
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

// function:byAlbumID
// sends the album with the given id
export async function byAlbumID(req, res) {
  let conn;
  const albumID = parseInt(req.params.albumID, 10);
  const queryRes = getAlbumQuery(null, null, null, null, null, albumID);
  const q = queryRes[0];
  const params = queryRes[1];

  // temp for testing
  console.log(q);
  console.log(albumID);
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
 *
 * @param {String} name - string for fuzzy search
 * @param {String} tag - tag for fuzzy search
 * @param {Int} parentID - parentID for exact search
 * @param {String} date - updated after given date
 * @param {String} keyword - keyword for fuzzy search
 * @param {Int} albumID - albumID for exact search
 *
 * @return {Object[String, Array]} = template statement, parameters for template statement
 */
function getAlbumQuery(name, tag, parentID, date, keyword, albumID) {
  const cols = `ID, Title, Parent, Tags, Keywords, Artists, Updated`;
  const params = [];
  let q = '';
  const basicQuery = `SELECT ${cols} FROM Album WHERE 1=1`;
  // parent
  if (parentID) {
    q += ` AND Album.Parent = ${parentID}`;
    params.push(parentID);
  }
  // name
  if (name) {
    q += ` AND Album.Title LIKE '%${name}%'`;
    params.push(name);
  }
  // tag
  if (tag) {
    q += ` AND Album.Tags LIKE '%${tag}%'`;
    params.push(tag);
  }
  // date
  if (date) {
    q += ` AND Album.Updated > '${date}'`;
    params.push(date);
  }
  // keyword
  if (keyword) {
    q += ` AND Album.Keywords LIKE '%${keyword}%'`;
    params.push(keyword);
  }
  // album id
  if (albumID) {
    q += ` AND Album.ID = ${albumID}`;
    params.push(albumID);
  }
  // // should we do this?
  // else {
  //   q += ` AND Parent IS NULL`;
  // }
  // return an object with a query and its parameters
  return [`${basicQuery + q};`, params];
}

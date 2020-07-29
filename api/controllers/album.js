// import { addSpecs, splitParams } from '..';

/**
 * function: albumBY
 * sends all albums according to the given to the search query
 * if none are specified, all parent albums are returned
 *
 * @param {Request} req - Express request object
 * @param {Response} res - Express response object
 *
 * /albums : all parent albums
 * /albums?name={name} : Search for album that matches this name (fuzzy match)
 * /albums?tag={tag} : Search for albums that have these tags (fuzzy matches)
 * /albums?keyword={keyword} : Search for albums that have these keywords (fuzzy matches)
 * /albums?parentID={parentID} : Search for albums that has this albumId as a parent.
 * /albums?updated={updated} : Search for albums that were last updated after this date.
 * /albums?artistName={artistName} : Search for all albums that have this artist (exact match)
 * /albums?artistID={artistID} : Search for all albums that have this artist (exact match)
 */
export async function albumsBy(req, res) {
  let conn;
  const { name, tags, keywords, updated, artistID } = req.query;
  const parentID = parseInt(req.query.parentID, 10);
  const { query, params } = getAlbumQuery({
    name,
    tags,
    parentID,
    updated,
    keywords,
    artistID,
  });
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

// function:byAlbumID
// sends the album with the given id
/**
 * function: byAlbumID
 * @param {Request} req - Express request object
 * @param {Response} res - Express response object
 */
export async function byAlbumID(req, res) {
  let conn;
  const albumID = parseInt(req.params.albumID, 10);
  const { query, params } = getAlbumQuery({ albumID });
  console.log(query, params);
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
 *
 * @param {String} name - string for fuzzy search
 * @param {String} tags - tag for fuzzy search
 * @param {Int} parentID - parentID for exact search
 * @param {String} date - updated after given date
 * @param {String} keywords - keyword for fuzzy search
 * @param {Int} albumID - albumID for exact search
 * @param {Int} artistName - artistName for fuzzy search
 * @param {Int} artistID - artistID for exact search
 *
 * @return {Object[String, Array]} = template statement, parameters for template statement
 */
function getAlbumQuery({ name, tags, parentID, updated, keywords, albumID, artistID }) {
  let cols =
    'Album.ID, Album.Title as AlbumName, Album.Parent, Album.Tags, Album.Keywords, Album.Artists, Album.Updated';
  let joins = '';
  let specifications = ' WHERE 1=1';
  let params = [];
  // artist's id
  if (artistID) {
    cols +=
      ', Artist.ID as ArtistID, Artist.Name, Artist.NameGurmukhi, Artist.Description,' +
      ' Artist.Detail, Artist.Tags as ArtistTags, Artist.Keywords as ArtistKeywords';
    joins += ' INNER JOIN Artist ON JSON_CONTAINS(Album.Artists, ?) = Artist.ID';
    params.push(artistID.toString());
  }
  // parent
  if (parentID) {
    specifications += ' AND Album.Parent = ?';
    params.push(parentID.toString());
  }
  // name
  if (name) {
    specifications += ' AND Album.Title LIKE ?';
    params.push(`%${name}%`);
  }
  // tag
  if (tags) {
    specifications += ' AND Album.Tags LIKE ?';
    params.push(`%${tags}%`);
  }
  // date
  if (updated) {
    specifications += ' AND Album.Updated > ?';
    params.push(`${updated}`);
  }
  // keyword
  if (keywords) {
    const keywordsArr = splitParams(keywords);
    specifications += addSpecs(' AND Album.Keywords LIKE ?', keywordsArr.length);
    params = params.concat(keywordsArr);
  }
  // album id
  if (albumID) {
    specifications += ' AND Album.ID = ?';
    params.push(albumID.toString());
  }
  // should parent be null?
  if (specifications === ' WHERE 1=1') {
    specifications += ' AND Parent IS NULL';
  }
  return { query: `SELECT ${cols} FROM Album${joins + specifications};`, params };
}

function addSpecs(specString, len) {
  let currStr = '';
  let count = len;
  while (count > 0) {
    currStr += specString;
    count--;
  }
  return currStr;
}

function splitParams(paramStr) {
  const paramArr = paramStr.split(',').map((element) => `%${element}%`);
  return paramArr;
}

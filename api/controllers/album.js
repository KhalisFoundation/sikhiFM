// function: allAlbums
// sends all parent albums

/**
 * function: all Albums
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
 * /albums?lyric={lyric} : Search for all albums that contain a track with these lyrics (fuzzy match)
 */
export async function albumsBy(req, res) {
  let conn;
  const { name, tag, keyword, updated, artistName, artistID, lyric } = req.query;
  const parentID = parseInt(req.query.parentID, 10);
  const { query, params } = getAlbumQuery({
    name,
    tag,
    parentID,
    updated,
    keyword,
    artistName,
    artistID,
    lyric
  });
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
 * @param {String} tag - tag for fuzzy search
 * @param {Int} parentID - parentID for exact search
 * @param {String} date - updated after given date
 * @param {String} keyword - keyword for fuzzy search
 * @param {Int} albumID - albumID for exact search
 * @param {Int} artistName - artistName for fuzzy search
 * @param {Int} artistID - artistID for exact search
 * @param {Int} lyric - 
 * 
 * @return {Object[String, Array]} = template statement, parameters for template statement
 */
function getAlbumQuery({ name, tag, parentID, updated, keyword, artistName, albumID, artistID, lyric }) {
  var cols = 'Album.ID, Album.Title, Album.Parent, Album.Tags, Album.Keywords, Album.Artists, Album.Updated';
  var params = [];
  let q = '';
  var basicQuery = `SELECT ${cols} FROM Album WHERE 1=1`;
    // artist's id
    if(artistID) {
      cols = `Album.ID, Album.Title, Album.Parent, Album.Tags, ` +
      `Album.Keywords, Album.Artists, Album.Updated, Artist.ID as ArtistID, ` +
      `Artist.Name, Artist.NameGurmukhi, Artist.Description, Artist.Detail, ` +
      `Artist.Tags as ArtistTags, Artist.Keywords as ArtistKeywords `;
      basicQuery = `SELECT ${cols} FROM Artist ` +
      `INNER JOIN Album ON JSON_CONTAINS(Album.Artists, ?) = Artist.ID ` +
      `WHERE 1=1`; 
      params.push(artistID.toString())
    }
  // parent
  if (parentID) {
    q += ' AND Album.Parent = ?';
    params.push(parentID.toString());
  }
  // name
  if (name) {
    q += ' AND Album.Title LIKE ?';
    params.push(`%${name}%`);
  }
  // tag
  if (tag) {
    q += ' AND Album.Tags LIKE ?';
    params.push(`%${tag}%`);
  }
  // date
  if (updated) {
    q += ' AND Album.Updated > ?';
    params.push(`${updated}`);
  }
  // keyword
  if (keyword) {
    q += ' AND Album.Keywords LIKE ?';
    params.push(`%${keyword}%`);
  }
  // album id
  if (albumID) {
    q += ' AND Album.ID = ?';
    params.push(albumID.toString());
  }

  // lyric
  // if(lyric) {

  // }
  return { query: `${basicQuery} ${q};`, params };
}

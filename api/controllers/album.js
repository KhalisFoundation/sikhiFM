// all albums
const allAlbums = async (req, res) => {
  let conn;
  try {
    conn = await req.app.locals.pool.getConnection();
    const q = 'SELECT * FROM sikhifm_db.Album WHERE Parent IS NULL;';
    const result = await conn.query(q);
    res.json(result);
    return;
  } catch (err) {
    res.json(`error${err}`);
    return;
  } finally {
    if (conn) {
      conn.release();
      conn.end();
    }
  }
};

exports.allAlbums = allAlbums;

// by album ID
const byAlbumID = async (req, res) => {
  let conn;
  const albumID = parseInt(req.params.albumID, 10);
  console.log("album id: " + albumID);
  try {
    conn = await req.app.locals.pool.getConnection();
    const q = 'SELECT * FROM `sikhifm_db`.`Album` WHERE `ID` = 2;';
    const result = await conn.query(q);
    res.json(result);
    return;
  } catch (err) {
    res.json(`error${err}`);
    return;
  } finally {
    if (conn) {
      conn.release();
      conn.end();
    }
  }
  // res.send(`by albumID${albumID}`);
};
exports.byAlbumID = byAlbumID;

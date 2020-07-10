// function: allAlbums
// sends all parent albums (MAKE THIS MORE CLEAR)
export async function allAlbums(req, res)  {
  let conn;
  try {
    conn = await req.app.locals.pool.getConnection();
    const q = 'SELECT * FROM Album WHERE Parent IS NULL;';
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
};


//exports.allAlbums = allAlbums;

// // function:byAlbumID
// // sends the album with the given id
// const byAlbumID = async (req, res) => {
//   let conn;
//   const albumID = parseInt(req.params.albumID, 10);
//   console.log(`album id: ${albumID}`);
//   try {
//     conn = await req.app.locals.pool.getConnection();
//     const q = 'SELECT * FROM `Album` WHERE `ID` = ?;';
//     const result = await conn.query(q, albumID);
//     res.json(result);
//     return;
//   } catch (err) {
//     res.json(`error${err}`);
//     return;
//   } finally {
//     if (conn) {
//       conn.end();
//     }
//   }
// };

// exports.byAlbumID = byAlbumID;

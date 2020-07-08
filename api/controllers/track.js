// function: allTracks
// sends all tracks in the database
const allTracks = async(req, res) => {
    let conn;
    try {
      conn = await req.app.locals.pool.getConnection();
      const q = 'SELECT * FROM `sikhifm_db`.`Track`;';
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

exports.allTracks = allTracks;


// function: tracksInAlbumID
// sends all tracks in a given album by id
const tracksInAlbumID = async(req, res) => {
    console.log("tracks in album");
    res.send(req.params.albumid);
    //console.log(req.query.albumid);
    //const queryString = window.location.search;
    // console.log(queryString);
    // const urlParams = new URLSearchParams(queryString);
    // const albumID = urlParams.get('albumid');
    // console.log(albumID);
}

exports.tracksInAlbumID = tracksInAlbumID;

// function: byTrackID
// sends the track with the given id
const byTrackID = async(req, res) => {
    let conn;
    const trackID = parseInt(req.params.trackID, 10);
    console.log('track id: '+ trackID);
    
    try {
      conn = await req.app.locals.pool.getConnection();
      const q = 'SELECT * FROM `sikhifm_db`.`Track` WHERE `Track`.`ID` = ' + trackID + ';';
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

exports.byTrackID = byTrackID;

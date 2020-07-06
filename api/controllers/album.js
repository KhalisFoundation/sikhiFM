const allAlbums = async (req, res) => {
    res.send('all albums');
}

exports.allAlbums = allAlbums;

// album sql query

// basic:
//SELECT * FROM `sikhifm_db`.`Album`
//WHERE `Parent` IS NULL;

// with join:
// SELECT * FROM `sikhifm_db`.`Album`
// LEFT JOIN `TrackAlbum` ON `Album`.`ID`=`TrackAlbum`.`Album`
// WHERE `Parent` IS NULL;

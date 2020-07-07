const allAlbums = async (req, res) => {
    res.send('all albums');
}

exports.allAlbums = allAlbums;

const byAlbumID = async (req, res) => {
    const albumID = parseInt(req.params.albumID, 10);
    res.send('by albumID'  + albumID);
}

exports.byAlbumID = byAlbumID;





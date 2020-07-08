// simple request to see if the service is up and running
// ex. select something from a generic table - (Verse) which is garunteed to be true
// for now return true

// conn = await req.app.locals.pool.getConnection();
// const result = await conn.query('SQL script')

exports.db = async (req, res) => {
  let conn;
  try {
    conn = await req.app.locals.pool.getConnection();
    const q = 'SELECT 1 as ok FROM Track WHERE ID=1 LIMIT 1';
    const result = await conn.query(q);
    result[0].ok = result[0].ok === 1;
    res.send(result[0]);
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

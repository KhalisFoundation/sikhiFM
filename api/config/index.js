const metadata = {
  host: 'localhost',
  user: process.env.DB_USER || 'root',
  password: process.env.DB_PASSWORD || 'root',
  database: process.env.NODE_ENV === 'development' ? 'sikhifm_db' : 'sikhifm_db',
  // connectionLimit : 10,
  // multipleStatements : true
};

module.exports = metadata;

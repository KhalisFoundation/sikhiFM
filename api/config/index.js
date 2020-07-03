// default this
module.exports = {
  mysql: {
    host: process.env.DB_HOST || 'localhost',
    port: process.env.DB_PORT || 3306,
    user: process.env.DB_USER || 'root',
    password: process.env.DB_PASSWORD || 'root',
    database: process.env.NODE_ENV === 'development' ? 'SikhiFM' : 'sikhiFMDB',
    dateStrings: true,
    connectionLimit: process.env.DB_POOL_SIZE,
  },
};

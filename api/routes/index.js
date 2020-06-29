
const os = require('os');
const { Router } = require('express');

const limiter = require('../controllers/limiter');
const pjson = require('../../package.json');
const category = require('../controllers/category');
const shabad = require('../controllers/shabad');
const collection = require('../controllers/collection');
const healthcheck = require('../controllers/healthcheck');

const route = Router();

route.get('/', limiter.rate100, (req, res) => {
    res.json({
      name: 'SikhiFM API',
      version: pjson.js,
      documentation: 'no' ,
      endpoint: os.hostname().substr(0, 3),
    });
  });
  
// HEALTHCHECK -- is this a requirement?
// Healthcheck Routes
route.get('/health', limiter.rate250, healthcheck.db);

//ID
//route.get('/id/:ShabadID', limiter.rate100, shabad.byID);

// acronym
//route.get('/line/:FirstLetters', limiter.rate100, shabad.byAcronym);

// line or keyword
//route.get('/verse/:Verse', limiter.rate100, shabad.byVerse);

// bani
//route.get('/bani/:Bani', limiter.rate100, category.byBani);

// raag
//route.get('raag/:Raag', limiter.rate100, category.ByRaag);

// author
//route.get('author/:Author',limiter.rate100, collection.byAuthor);

// kirtanis
//route.get('kirtani/:Kirtani',limiter.rate100, collection.byKirtani);


module.exports = route;

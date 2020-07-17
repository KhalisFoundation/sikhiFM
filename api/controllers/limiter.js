import limiter from 'limiter';
import cache from 'memory-cache';

export const isLimited = (req, res, next, rate) => {
  if (cache.get(req.ip)) {
    const cachedLimiter = cache.get(req.ip);
    if (cachedLimiter.getTokensRemaining() > 1) {
      cachedLimiter.removeTokens(1, () => {});
      cache.put(req.ip, cachedLimiter, 10000);
      return next();
    }
    return res.status(429).send('Too Many Requests');
  }
  const cachedLimiter = new limiter.RateLimiter(rate, 'minute');
  cache.put(req.ip, cachedLimiter, 10000);
  return next();
};

export default {
  rate250: (req, res, next) => isLimited(req, res, next, 250),
  rate100: (req, res, next) => isLimited(req, res, next, 100),
};

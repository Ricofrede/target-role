module.exports = ({ env }) => ({
  auth: {
    secret: env('ADMIN_JWT_SECRET', '0fddd1e209747dea98a981ae1ffab429'),
  },
});

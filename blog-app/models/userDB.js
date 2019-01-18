const { db, pgp } = require('../config/conn');


module.exports = {

  index() {
    db.many(`
      SELECT *
      FROM users
      `);
  },

  findById(id) {
    return db.one(`
      SELECT *
      FROM users
      WHERE id = $1`, id);
  },

  create(user) {
    
  }

}
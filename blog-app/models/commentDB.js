const { db, pgp } = require('../config/connection');

module.exports = {

  index() {
    db.many(`
      SELECT *
      FROM comments
      `);
  },

  findById(id) {
    return db.one(`
      SELECT *
      FROM comments
      WHERE id = $1`, id);
  },

  create(comment) {

  },

  update(commentId) {

  },

  delete(commentId) {

  },

}
const { db, pgp } = require('../config/connection');

module.exports = {

  index() {
    db.many(`
      SELECT *
      FROM posts
      `);
  },

  findById(id) {
    return db.one(`
      SELECT *
      FROM posts
      WHERE id = $1`, id);
  },

  create(post) {

  },

  update(postId) {

  },

  delete(postId) {

  },

}
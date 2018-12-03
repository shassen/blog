const router = require('express')();
const userController = require('../controllers/userController');

// Get all users at: http://localhost:3000/users


// Get one user at: http://localhost:3000/users/:id


// Get a users posts at: http://localhost:3000/users/:id/posts


// Get a users comments at: http://localhost:3000/users/:id/posts/:id/comments


// Get a users comment on a particular post at: http://localhost:3000/users/:id/posts/:id/comments/:id


// Create a user at: http://localhost:3000/users


// Edit a user at: http://localhost:3000/users/:id


// Delete a user at: http://localhost:3000/users/:id

module.exports = router;
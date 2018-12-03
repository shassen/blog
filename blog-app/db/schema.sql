DROP TABLE IF EXISTS images;
DROP TABLE IF EXISTS videos;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  username VARCHAR(255) NOT NULL,
  password_digest VARCHAR(255) NOT NULL,
  about TEXT,
  img_url VARCHAR(255),
  zip_code INTEGER,
  facebook_url VARCHAR(255),
  twitter_url VARCHAR(255),
  instagram_url VARCHAR(255),
  github_url VARCHAR(255),
  personal_url VARCHAR(255),
  linkedin_url VARCHAR(255),
  created_at TIMESTAMP NOT NULL DEFAULT NOW ()
);

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  category VARCHAR(255),
  user_id INTEGER REFERENCES users (id),
  created_at TIMESTAMP NOT NULL DEFAULT NOW ()
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  content TEXT NOT NULL,
  user_id INTEGER REFERENCES users (id),
  post_id INTEGER REFERENCES posts (id),
  create_at TIMESTAMP NOT NULL DEFAULT NOW ()
);

CREATE TABLE images (
  id SERIAL PRIMARY KEY,
  img_url VARCHAR(255),
  post_id INTEGER REFERENCES posts (id),
  user_id INTEGER REFERENCES users (id),
  created_at TIMESTAMP NOT NULL DEFAULT NOW ()
);

CREATE TABLE videos (
  id SERIAL PRIMARY KEY,
  video_url VARCHAR(255),
  post_id INTEGER REFERENCES posts (id),
  user_id INTEGER REFERENCES users (id),
  created_at TIMESTAMP NOT NULL DEFAULT NOW ()
)

-- Table of Users
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY, 
    firstname TEXT NOT NULL, 
    lastname TEXT,
    email VARCHAR(125) UNIQUE NOT NULL);

--Table Quiz_Scores
CREATE TABLE quiz_scores (
    id SERIAL PRIMARY KEY, 
    user_id INT NOT NULL REFERENCES users(user_id), 
    score INT NOT NULL, 
    date_completed TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    mood_category TEXT NOT NULL,
    message TEXT NOT NULL);

--Table of Favorites
CREATE TABLE favorites (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(user_id),
    favorite_type VARCHAR(50) NOT NULL,
    item_id TYPE TEXT,
    book_name VARCHAR(100),
    verse_text TEXT,
    UNIQUE (user_id, item_id));

--Table of Guests
CREATE TABLE guest (
   user_id SERIAL PRIMARY KEY, 
    firstname TEXT NOT NULL, 
    lastname TEXT,
    email VARCHAR(125) UNIQUE NOT NULL);
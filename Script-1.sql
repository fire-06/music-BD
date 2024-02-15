CREATE table if not exists Genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL
);

CREATE TABLE  if not exists Artists (
    artist_id SERIAL PRIMARY KEY,
    artist_name VARCHAR(50) NOT NULL
);

CREATE TABLE  if not exists Genres_Artists (
    genre_id INT,
    artist_id INT,
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

CREATE TABLE  if not exists Albums (
    album_id SERIAL PRIMARY KEY,
    album_name VARCHAR(100) NOT NULL,
    release_year INT NOT NULL
);

CREATE TABLE  if not exists Artists_Albums (
    artist_id INT,
    album_id INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

CREATE TABLE  if not exists Tracks (
    track_id SERIAL PRIMARY KEY,
    track_name VARCHAR(100) NOT NULL,
    duration INT NOT NULL,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

CREATE TABLE  if not exists Compilations (
    compilation_id SERIAL PRIMARY KEY,
    compilation_name VARCHAR(100) NOT NULL,
    release_year INT NOT NULL
);

CREATE TABLE  if not exists Compilations_Tracks (
    compilation_id INT,
    track_id INT,
    FOREIGN KEY (compilation_id) REFERENCES Compilations(compilation_id),
    FOREIGN KEY (track_id) REFERENCES Tracks(track_id)
);
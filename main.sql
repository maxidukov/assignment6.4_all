CREATE SCHEMA IF NOT EXISTS music_site;

CREATE TABLE IF NOT EXISTS music_site.Genres
(
    GenreID         SERIAL PRIMARY KEY,
    name            VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS music_site.Artists
(
    ArtistID        SERIAL PRIMARY KEY,
    name            VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS music_site.ArtistsGenres
(
    ArtistID        INTEGER NOT NULL REFERENCES music_site.Artists
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    GenreID         INTEGER NOT NULL REFERENCES music_site.Genres
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    PRIMARY KEY (ArtistID, GenreID)
);

CREATE TABLE IF NOT EXISTS music_site.Albums
(
    AlbumID         SERIAL PRIMARY KEY,
    name            VARCHAR(100),
    year        	INTEGER CHECK (year > 1900)   
);

CREATE TABLE IF NOT EXISTS music_site.ArtistsAlbums
(
    ArtistID        INTEGER NOT NULL REFERENCES music_site.Artists
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    AlbumID         INTEGER NOT NULL REFERENCES music_site.Albums
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    PRIMARY KEY (ArtistID, AlbumID)
);

CREATE TABLE IF NOT EXISTS music_site.Tracks
(
    TrackID         SERIAL PRIMARY KEY,
    name            VARCHAR(150),
    AlbumID         INTEGER NOT NULL REFERENCES music_site.Albums
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    duration        INTERVAL CHECK (duration > '0'::interval),
    UNIQUE (name, AlbumID)
);

CREATE TABLE IF NOT EXISTS music_site.Compilations
(
    CompilationID   SERIAL PRIMARY KEY,
    name            VARCHAR(100),
    year            INTEGER CHECK (year > 1900)
    
);

CREATE TABLE IF NOT EXISTS music_site.TracksCompilations
(
    TrackID        INTEGER NOT NULL REFERENCES music_site.Tracks
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CompilationID  INTEGER NOT NULL REFERENCES music_site.Compilations
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    PRIMARY KEY (CompilationID, TrackID)
);
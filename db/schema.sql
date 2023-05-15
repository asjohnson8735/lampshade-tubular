DROP DATABASE IF EXISTS touristy_db;
CREATE DATABASE touristy_db;

USE touristy_db;

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT
);

CREATE TABLE trips(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (users_id),
    destination TEXT NOT NULL,
    trip_start DATE NOT NULL,
    trip_end DATE NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT
);

CREATE TABLE photos (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (trips_id),
    URL VARCHAR(255) NOT NULL,
    captions TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT
);

CREATE TABLE blogs (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (trips_id),
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT
);
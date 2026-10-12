CREATE DATABASE music_streaming_app;
USE music_streaming_app;
CREATE TABLE playlists (
    playlist_id INT PRIMARY KEY,
    name VARCHAR(100),
    created_by VARCHAR(100)
);
INSERT INTO playlists (playlist_id, name, created_by)
VALUES
(1, 'Bollywood Hits', 'Amit'),
(2, 'Chill Vibes', 'Rahul'),
(3, 'Workout Mix', 'Priya');
SELECT *
FROM playlists
WHERE created_by = 'Amit';


/*Imagine a food delivery app like Zomato.

A table is used to store related data in an organized way. For example, a restaurants table can store information about different restaurants.

A column represents one type of information in the table. For example, the restaurant_id, restaurant_name, location, and rating can be columns.

A row represents one complete record in the table. For example, one row can contain the details of a single restaurant.

Example:

restaurant_id	restaurant_name	location	rating
1	Honest	Ahmedabad	4.2
2	La Pino's Pizza	Ahmedabad	4.3

Here, the entire restaurants data is the table, restaurant_name and rating are columns, and each restaurant's complete information is a row.*/


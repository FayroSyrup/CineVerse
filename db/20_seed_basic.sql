-- Sample data for demo only. Earnings and platform links are made-up demo values.
-- Seed IDs are below 1000, so new rows from the app never clash with them.

INSERT INTO production_house (production_house_id, name) VALUES (1, 'Warner Bros. Pictures');
INSERT INTO production_house (production_house_id, name) VALUES (2, 'Columbia Pictures');
INSERT INTO production_house (production_house_id, name) VALUES (3, 'Paramount Pictures');

INSERT INTO directors (director_id, name, gender) VALUES (1, 'Christopher Nolan', 'Male');
INSERT INTO directors (director_id, name, gender) VALUES (2, 'Gabriele Muccino', 'Male');
INSERT INTO directors (director_id, name, gender) VALUES (3, 'Todd Phillips', 'Male');

INSERT INTO actors (actor_id, name, gender) VALUES (1, 'Christian Bale', 'Male');
INSERT INTO actors (actor_id, name, gender) VALUES (2, 'Heath Ledger', 'Male');
INSERT INTO actors (actor_id, name, gender) VALUES (3, 'Will Smith', 'Male');
INSERT INTO actors (actor_id, name, gender) VALUES (4, 'Leonardo DiCaprio', 'Male');
INSERT INTO actors (actor_id, name, gender) VALUES (5, 'Matthew McConaughey', 'Male');
INSERT INTO actors (actor_id, name, gender) VALUES (6, 'Bradley Cooper', 'Male');

INSERT INTO genres (genre_id, name, description) VALUES (1, 'Action', 'Fast paced movies with fights and chases');
INSERT INTO genres (genre_id, name, description) VALUES (2, 'Drama', 'Story driven movies about people and their lives');
INSERT INTO genres (genre_id, name, description) VALUES (3, 'Sci-Fi', 'Movies based on science and the future');
INSERT INTO genres (genre_id, name, description) VALUES (4, 'Comedy', 'Movies made to make people laugh');

INSERT INTO awards (award_id, name, award_year, category) VALUES (1, 'Academy Award', 2009, 'Best Supporting Actor');
INSERT INTO awards (award_id, name, award_year, category) VALUES (2, 'Academy Award', 2011, 'Best Visual Effects');
INSERT INTO awards (award_id, name, award_year, category) VALUES (3, 'Academy Award', 2015, 'Best Visual Effects');

INSERT INTO streaming_platforms (platform_id, name) VALUES (1, 'Netflix');
INSERT INTO streaming_platforms (platform_id, name) VALUES (2, 'Amazon Prime Video');
INSERT INTO streaming_platforms (platform_id, name) VALUES (3, 'Apple TV+');

INSERT INTO movies (movie_id, title, director_id, production_house_id, release_date, duration_min, language, description)
VALUES (1, 'The Dark Knight', 1, 1, DATE '2008-07-18', 152, 'English', 'Batman faces the Joker in Gotham City.');
INSERT INTO movies (movie_id, title, director_id, production_house_id, release_date, duration_min, language, description)
VALUES (2, 'The Pursuit of Happyness', 2, 2, DATE '2006-12-15', 117, 'English', 'A struggling salesman fights to build a better life for his son.');
INSERT INTO movies (movie_id, title, director_id, production_house_id, release_date, duration_min, language, description)
VALUES (3, 'Inception', 1, 1, DATE '2010-07-16', 148, 'English', 'A thief enters dreams to plant an idea.');
INSERT INTO movies (movie_id, title, director_id, production_house_id, release_date, duration_min, language, description)
VALUES (4, 'Interstellar', 1, 3, DATE '2014-11-07', 169, 'English', 'Explorers travel through a wormhole to save humanity.');
INSERT INTO movies (movie_id, title, director_id, production_house_id, release_date, duration_min, language, description)
VALUES (5, 'The Hangover', 3, 1, DATE '2009-06-05', 100, 'English', 'Friends wake up after a bachelor party and cannot remember the night.');

INSERT INTO movie_cast (cast_id, movie_id, actor_id, cast_name, role) VALUES (1, 1, 1, 'Bruce Wayne', 'Lead');
INSERT INTO movie_cast (cast_id, movie_id, actor_id, cast_name, role) VALUES (2, 1, 2, 'Joker', 'Villain');
INSERT INTO movie_cast (cast_id, movie_id, actor_id, cast_name, role) VALUES (3, 2, 3, 'Chris Gardner', 'Lead');
INSERT INTO movie_cast (cast_id, movie_id, actor_id, cast_name, role) VALUES (4, 3, 4, 'Dom Cobb', 'Lead');
INSERT INTO movie_cast (cast_id, movie_id, actor_id, cast_name, role) VALUES (5, 4, 5, 'Cooper', 'Lead');
INSERT INTO movie_cast (cast_id, movie_id, actor_id, cast_name, role) VALUES (6, 5, 6, 'Phil', 'Lead');

INSERT INTO movies_genres (movie_id, genre_id) VALUES (1, 1);
INSERT INTO movies_genres (movie_id, genre_id) VALUES (2, 2);
INSERT INTO movies_genres (movie_id, genre_id) VALUES (3, 3);
INSERT INTO movies_genres (movie_id, genre_id) VALUES (3, 1);
INSERT INTO movies_genres (movie_id, genre_id) VALUES (4, 3);
INSERT INTO movies_genres (movie_id, genre_id) VALUES (4, 2);
INSERT INTO movies_genres (movie_id, genre_id) VALUES (5, 4);

INSERT INTO movies_awards (movie_id, award_id) VALUES (1, 1);
INSERT INTO movies_awards (movie_id, award_id) VALUES (3, 2);
INSERT INTO movies_awards (movie_id, award_id) VALUES (4, 3);

INSERT INTO movies_streaming_platforms (movie_id, platform_id) VALUES (1, 1);
INSERT INTO movies_streaming_platforms (movie_id, platform_id) VALUES (2, 2);
INSERT INTO movies_streaming_platforms (movie_id, platform_id) VALUES (3, 1);
INSERT INTO movies_streaming_platforms (movie_id, platform_id) VALUES (4, 2);
INSERT INTO movies_streaming_platforms (movie_id, platform_id) VALUES (5, 3);

-- Demo values only, not official figures
INSERT INTO movie_earnings (earning_id, movie_id, budget, stream_earning, box_office_earning, total_earning)
VALUES (1, 1, 185000000, 50000000, 950000000, 1000000000);
INSERT INTO movie_earnings (earning_id, movie_id, budget, stream_earning, box_office_earning, total_earning)
VALUES (2, 3, 160000000, 40000000, 800000000, 840000000);
INSERT INTO movie_earnings (earning_id, movie_id, budget, stream_earning, box_office_earning, total_earning)
VALUES (3, 5, 35000000, 20000000, 450000000, 470000000);

INSERT INTO movie_trailers (trailer_id, movie_id, description, video_url)
VALUES (1, 1, 'Official trailer', 'https://example.com/trailers/dark-knight');
INSERT INTO movie_trailers (trailer_id, movie_id, description, video_url)
VALUES (2, 3, 'Official trailer', 'https://example.com/trailers/inception');

INSERT INTO movie_promotions (promotion_id, movie_id, promotion_type, start_date, end_date, budget)
VALUES (1, 3, 'Social media campaign', DATE '2010-06-01', DATE '2010-07-15', 5000000);
INSERT INTO movie_promotions (promotion_id, movie_id, promotion_type, start_date, end_date, budget)
VALUES (2, 4, 'Billboard campaign', DATE '2014-10-01', DATE '2014-11-06', 3000000);

COMMIT;
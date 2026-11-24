-- Sample users and their activity (demo only).
-- Login: admin@cineverse.com / Admin@1234 ; other users / Demo@1234

INSERT INTO users (user_id, name, email, password_hash, role, join_date)
VALUES (1, 'Admin', 'admin@cineverse.com', '$2b$10$GOue1fl3Ei70CloHNDx7JOvIMJOuNydeVa8HOnimPzyGW0XLBxSca', 'ADMIN', DATE '2024-01-01');
INSERT INTO users (user_id, name, email, password_hash, role, join_date)
VALUES (2, 'Ayan Rahman', 'ayan@example.com', '$2b$10$ciqKOX7Dweb7U1yCI81ZZe7USrWcQOdRqdClal5Qv7ghu04GPsifW', 'USER', DATE '2024-02-10');
INSERT INTO users (user_id, name, email, password_hash, role, join_date)
VALUES (3, 'Mim Chowdhury', 'mim@example.com', '$2b$10$ciqKOX7Dweb7U1yCI81ZZe7USrWcQOdRqdClal5Qv7ghu04GPsifW', 'USER', DATE '2024-03-05');
INSERT INTO users (user_id, name, email, password_hash, role, join_date)
VALUES (4, 'Tanvir Hasan', 'tanvir@example.com', '$2b$10$ciqKOX7Dweb7U1yCI81ZZe7USrWcQOdRqdClal5Qv7ghu04GPsifW', 'USER', DATE '2024-04-18');
INSERT INTO users (user_id, name, email, password_hash, role, join_date)
VALUES (5, 'Sadia Islam', 'sadia@example.com', '$2b$10$ciqKOX7Dweb7U1yCI81ZZe7USrWcQOdRqdClal5Qv7ghu04GPsifW', 'USER', DATE '2024-05-22');
INSERT INTO users (user_id, name, email, password_hash, role, join_date)
VALUES (6, 'Rafi Ahmed', 'rafi@example.com', '$2b$10$ciqKOX7Dweb7U1yCI81ZZe7USrWcQOdRqdClal5Qv7ghu04GPsifW', 'USER', DATE '2024-06-30');

INSERT INTO ratings (rating_id, movie_id, user_id, rating_value, rating_date) VALUES (1, 1, 2, 9.5, DATE '2025-03-01');
INSERT INTO ratings (rating_id, movie_id, user_id, rating_value, rating_date) VALUES (2, 1, 3, 9.0, DATE '2025-03-02');
INSERT INTO ratings (rating_id, movie_id, user_id, rating_value, rating_date) VALUES (3, 2, 4, 8.0, DATE '2025-03-03');
INSERT INTO ratings (rating_id, movie_id, user_id, rating_value, rating_date) VALUES (4, 3, 2, 9.0, DATE '2025-03-04');
INSERT INTO ratings (rating_id, movie_id, user_id, rating_value, rating_date) VALUES (5, 3, 5, 8.5, DATE '2025-03-05');
INSERT INTO ratings (rating_id, movie_id, user_id, rating_value, rating_date) VALUES (6, 4, 3, 8.5, DATE '2025-03-06');
INSERT INTO ratings (rating_id, movie_id, user_id, rating_value, rating_date) VALUES (7, 4, 6, 9.0, DATE '2025-03-07');
INSERT INTO ratings (rating_id, movie_id, user_id, rating_value, rating_date) VALUES (8, 5, 4, 7.5, DATE '2025-03-08');
INSERT INTO ratings (rating_id, movie_id, user_id, rating_value, rating_date) VALUES (9, 5, 6, 7.0, DATE '2025-03-09');

-- Set the movie averages once here. A trigger will keep them correct later.
UPDATE movies m
SET avg_rating = NVL((SELECT ROUND(AVG(rating_value), 1) FROM ratings r WHERE r.movie_id = m.movie_id), 0),
    rating_count = (SELECT COUNT(*) FROM ratings r WHERE r.movie_id = m.movie_id);

INSERT INTO reviews (review_id, movie_id, user_id, review_text, likes, review_date)
VALUES (1, 1, 2, 'Great story and a very strong villain.', 3, DATE '2025-03-01');
INSERT INTO reviews (review_id, movie_id, user_id, review_text, likes, review_date)
VALUES (2, 3, 5, 'Confusing at first, but worth watching twice.', 2, DATE '2025-03-05');
INSERT INTO reviews (review_id, movie_id, user_id, review_text, likes, review_date)
VALUES (3, 4, 6, 'Emotional and beautiful to watch.', 5, DATE '2025-03-07');

INSERT INTO watch_lists (watch_list_id, user_id, movie_id, added_date) VALUES (1, 2, 4, DATE '2025-03-10');
INSERT INTO watch_lists (watch_list_id, user_id, movie_id, added_date) VALUES (2, 3, 3, DATE '2025-03-11');
INSERT INTO watch_lists (watch_list_id, user_id, movie_id, added_date) VALUES (3, 5, 1, DATE '2025-03-12');

INSERT INTO user_subscriptions (subscription_id, user_id, platform_id, plan_name, start_date, end_date)
VALUES (1, 2, 1, 'Premium', DATE '2025-01-01', DATE '2025-12-31');
INSERT INTO user_subscriptions (subscription_id, user_id, platform_id, plan_name, start_date, end_date)
VALUES (2, 3, 2, 'Basic', DATE '2025-02-01', DATE '2025-07-31');

INSERT INTO fan_communities (community_id, platform, creation_date) VALUES (1, 'Discord', DATE '2024-02-01');
INSERT INTO fan_communities (community_id, platform, creation_date) VALUES (2, 'Facebook Group', DATE '2024-03-01');

INSERT INTO user_fan_communities (user_id, community_id) VALUES (2, 1);
INSERT INTO user_fan_communities (user_id, community_id) VALUES (3, 1);
INSERT INTO user_fan_communities (user_id, community_id) VALUES (4, 2);

INSERT INTO movies_fan_communities (movie_id, community_id) VALUES (3, 1);
INSERT INTO movies_fan_communities (movie_id, community_id) VALUES (1, 2);

-- Set member counts once here. A trigger will keep them correct later.
UPDATE fan_communities c
SET total_members = (SELECT COUNT(*) FROM user_fan_communities u WHERE u.community_id = c.community_id);

COMMIT;
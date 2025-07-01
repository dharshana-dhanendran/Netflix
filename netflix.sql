-- Display the database
SELECT * FROM netflix_db.netflix; 
-- count the total values
SELECT COUNT(*) AS total 
FROM netflix_db.netflix;
-- Display Tv show  
SELECT * FROM netflix_db.netflix WHERE type='TV Show';
-- Aggeragate function  
SELECT MAX(rating) FROM netflix_db.netflix;

SELECT MIN(rating) FROM netflix_db.netflix;

SELECT * FROM netflix_db.netflix WHERE COUNTRY='United Kingdom'; 

SELECT * FROM netflix_db.netflix WHERE release_year='2021';

SELECT * FROM netflix_db.netflix WHERE TITLE LIKE'D%';

SELECT MAX(DURATION) FROM netflix_db.netflix;

SELECT AVG(DURATION) FROM netflix_db.netflix;

SELECT * 
FROM netflix_db.netflix
WHERE `date_added` IS NOT NULL
LIMIT 0, 2000;

SELECT distinct * FROM netflix_db.netflix;

DESCRIBE netflix_db.netflix;

-- 1. Count the number of Movies vs TV Shows
SELECT 
  type,
  COUNT(*) AS total_count
FROM netflix_db.netflix
WHERE type IN ('Movie', 'TV Show')
GROUP BY type;


-- 2. Find the most common rating for movies and TV shows

SELECT rating, COUNT(*) AS count
FROM netflix_db.netflix
GROUP BY rating
ORDER BY count DESC;

-- 3. List all movies released in a specific year (e.g., 2020)

SELECT * FROM netflix_db.netflix WHERE release_year='2020'AND type='Movie';

-- 4. Find the top 5 countries with the most content on Netflix

SELECT MAX(COUNTRY) FROM netflix_db.netflix ORDER BY COUNTRY LIMIT 5;


-- 5. Identify the longest movie 
SELECT duration FROM netflix_db.netflix WHERE type = 'Movie' LIMIT 10;

SELECT distinct TYPE FROM netflix_db.netflix;

-- 1) List all movies released in 2021.

SELECT TYPE FROM netflix_db.netflix
WHERE release_year IN (2021);

-- 2) Find all TV Shows added on 'September 24, 2021'

SELECT * FROM netflix_db.netflix WHERE TYPE='TV SHOW' AND DATE_ADDED='September 24, 2021';

-- 3)Retrieve titles directed by 'Mike Flanagan'

SELECT * FROM netflix_db.netflix WHERE DIRECTOR='Mike Flanagan';

-- 4)Show all entries where the country is 'United States'

SELECT * FROM netflix_db.netflix WHERE COUNTRY='United States';

-- 5) Display all titles rated 'PG-13'

SELECT TITLE FROM netflix_db.netflix WHERE RATING='PG-13';

-- 6. Find content added in the last 5 years
-- 7. Find all the movies/TV shows by director 'Rajiv Chilaka'!
-- 8. List all TV shows with more than 5 seasons
-- 9. Count the number of content items in each genre
-- 10.Find each year and the average numbers of content release in India on netflix.

SELECT description FROM  netflix_db.netflix WHERE RELEASE_YEAR ORDER BY RELEASE_YEAR DESC LIMIT 5;

SELECT TYPE FROM  netflix_db.netflix WHERE DIRECTOR='Rajiv Chilaka';

SELECT TYPE FROM netflix_db.netflix WHERE DURATION>=5;

SELECT description, COUNT(*) AS content_count
FROM netflix_db.netflix
GROUP BY description
ORDER BY content_count DESC;

SELECT release_year, COUNT(*) AS total_content, 
       AVG(COUNT(*)) OVER() AS avg_content_per_year
FROM netflix_db.netflix
WHERE country LIKE '%India%'
GROUP BY release_year
ORDER BY release_year;






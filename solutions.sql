Challenge 1:
SELECT
	authors.au_id AS "Author ID",
	authors.au_lname AS "Last name",
	authors.au_fname AS "First name",
	titles.title AS "Title",
	publishers.pub_name AS "Publisher"
	
FROM
	authors, titles, publishers, titleauthor
	
WHERE
	authors.au_id == titleauthor.au_id AND
	titleauthor.title_id == titles.title_id AND
	titles.pub_id == publishers.pub_id
	;

Challenge 2:
SELECT
    a.au_id as "Author ID",
    a.au_lname as "Last Name",
    a.au_fname as "First Name",
    p.pub_name as "Publisher Name",
    COUNT(t.title_id) AS total_published
FROM authors a
JOIN titleauthor ta ON a.au_id = ta.au_id
JOIN titles t ON ta.title_id = t.title_id
JOIN publishers p ON t.pub_id = p.pub_id
GROUP BY
    a.au_id,
    a.au_lname,
    a.au_fname,
    p.pub_name
ORDER BY
    a.au_lname,
    p.pub_name;
	;
	
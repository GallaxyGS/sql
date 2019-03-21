  UPDATE authors
    SET
      firstname = ?,
      lastname = ?
    WHERE id_author = ?

  SELECT *
  FROM authors
  WHERE id_author = ?;

  UPDATE books
    SET
      title = ?,
      ean = ?,
      pages_count = ?,
      year = ?
    WHERE id_book = ?;


  SELECT b.id_book, title, ean, pages_count, year, created_at, a.id_author, a.firstname, a.lastname
  	FROM books b
  	JOIN book_authors ba ON b.id_book = ba.id_book
  	JOIN authors a ON a.id_author = ba.id_author
  		WHERE b.id_book=?;

  UPDATE genres
    SET
      name = ?
    WHERE id_genre = ?

  SELECT *
  FROM genres
  WHERE id_genre = ?;

SELECT id_book, title, ean, authors.firstname, authors.lastname, genres.name, genres.id_genre, authors.id_author FROM books
                                          JOIN book_authors USING (id_book)
                                          JOIN authors USING (id_author)
                                          JOIN book_genres USING (id_book)
                                          JOIN genres USING (id_genre)

SELECT *  FROM books
                                           JOIN book_authors USING (id_book)
                                           JOIN authors USING (id_author)


SELECT * FROM authors


SELECT * FROM authors WHERE id_author = ?

SELECT * FROM books b JOIN book_authors ba ON b.id_book = ba.id_book WHERE ba.id_author = ?

SELECT * FROM authors WHERE id_author = ?

SELECT * FROM books WHERE id_book = ?

SELECT id_book, title, ean FROM books



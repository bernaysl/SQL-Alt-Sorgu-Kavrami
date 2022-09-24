/*ALT SORGU KAVRAMI*/

SELECT * FROM book
WHERE page_number >
(
SELECT page_number FROM book
WHERE title = 'Gülün Adı' //once burasi calisacak sonra ust sorguya gecilecek
);


/*ANY ve ALL komutları bir WHERE veya HAVING ifadeleri ile kullanılır. 
ANY komutu, alt sorgu değerinden herhangi biri koşulu karşılıyorsa true döndürür. 
ALL operatörü, tüm alt sorgu değerleri koşulu karşılıyorsa true döndürür.*/


SELECT first_name, last_name
FROM author
WHERE id = ANY
(
  SELECT id
  FROM book
  WHERE title = 'Sheff Rattrie' OR title = 'Ninetta Hadgraft')


--burada herhangi bir deger donmeyecek cunku iki ayri id degeri birbirine esit olmaz

SELECT first_name, last_name
FROM author
WHERE id = ALL
(
  SELECT id
  FROM book
  WHERE title = 'Sheff Rattrie' OR title = 'Ninetta Hadgraft'
)


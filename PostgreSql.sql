
SELECT * 
FROM prodotti 
WHERE EXTRACT(YEAR FROM data_attivazione) = 2017 
  AND (in_produzione = TRUE OR in_commercio = TRUE);

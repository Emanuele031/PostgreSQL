SELECT COUNT(*) 
FROM fatture 
WHERE iva = 20;

SELECT f.numero_fattura, f.importo, f.iva, c.nome, c.cognome
FROM fatture f
JOIN clienti c ON f.id_cliente = c.numero_cliente
WHERE f.importo < 1000;

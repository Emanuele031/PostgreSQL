CREATE TABLE clienti (
    numero_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    cognome VARCHAR(100),
    anno_nascita INT,
    regione_residenza VARCHAR(100)
);

CREATE TABLE prodotti (
    id_prodotto SERIAL PRIMARY KEY,
    descrizione VARCHAR(255),
    in_produzione BOOLEAN,
    in_commercio BOOLEAN,
    data_attivazione DATE,
    data_disattivazione DATE
);

CREATE TABLE fornitori (
    numero_fornitore SERIAL PRIMARY KEY,
    denominazione VARCHAR(255),
    regione_residenza VARCHAR(100)
);

CREATE TABLE fatture (
    numero_fattura SERIAL PRIMARY KEY,
    tipologia VARCHAR(100),
    importo DECIMAL(10, 2),
    iva DECIMAL(5, 2),
    id_cliente INT,
    data_fattura DATE,
    numero_fornitore INT,
    FOREIGN KEY (id_cliente) REFERENCES clienti(numero_cliente),
    FOREIGN KEY (numero_fornitore) REFERENCES fornitori(numero_fornitore)
);

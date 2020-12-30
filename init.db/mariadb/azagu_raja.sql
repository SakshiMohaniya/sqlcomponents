DROP TABLE IF EXISTS azagu_raja;
DROP TABLE IF EXISTS azagu_raja_reference;

CREATE TABLE azagu_raja_reference (
    code VARCHAR(80) PRIMARY KEY,
    name VARCHAR(80),
    UNIQUE(name)
);

CREATE TABLE azagu_raja(
    id INT NOT NULL AUTO_INCREMENT,
    reference_code VARCHAR(80),
    a_tinyint TINYINT,
    a_smallint SMALLINT,
    a_integer INT,
    a_bigint BIGINT,
    a_decimal DECIMAL,
    a_decimal3 DECIMAL(10,3),
    a_float FLOAT,
    a_bit BIT(8),
    PRIMARY KEY ( id ),
    CONSTRAINT fk_code
    FOREIGN KEY(reference_code)
	REFERENCES azagu_raja_reference(code)
);

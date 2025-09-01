USE sql_intro;

CREATE TABLE ethnicity (
    id INT PRIMARY KEY,
    name VARCHAR(20)
);

CREATE TABLE gender (
    id INT PRIMARY KEY,
    name VARCHAR(20)
);


CREATE TABLE symptoms (
    id INT PRIMARY KEY,
    fever BOOLEAN,
    blue_whelts BOOLEAN,
    low_bp BOOLEAN
);

CREATE TABLE disease (
    name VARCHAR(20) PRIMARY KEY,
    survival_rate FLOAT
);

CREATE TABLE patient (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ethnicity INT,
    gender INT,  
    symptoms_family INT,
    disease VARCHAR(20),
    FOREIGN KEY (ethnicity) REFERENCES ethnicity(id),
    FOREIGN KEY (gender) REFERENCES gender(id),
    FOREIGN KEY (symptoms_family) REFERENCES symptoms(id),
    FOREIGN KEY (disease) REFERENCES disease(name)
 );

-- Simple tables
-- INSERT INTO ethnicity VALUES(0, "asian");
-- INSERT INTO ethnicity VALUES(1, "black");
-- INSERT INTO ethnicity VALUES(2, "hispanic");
-- INSERT INTO ethnicity VALUES(3, "white");

-- INSERT INTO gender VALUES(0, "female");
-- INSERT INTO gender VALUES(1, "male");

-- INSERT INTO symptoms VALUES(0, 1, 1, 1);
-- INSERT INTO symptoms VALUES(1, 0, 1, 1);
-- INSERT INTO symptoms VALUES(2, 0, 0, 1);
-- INSERT INTO symptoms VALUES(3, 0, 0, 0);
-- INSERT INTO symptoms VALUES(4, 1, 0, 1);
-- INSERT INTO symptoms VALUES(5, 1, 0, 0);
-- INSERT INTO symptoms VALUES(6, 1, 1, 0);
-- INSERT INTO symptoms VALUES(7, 0, 1, 0);

-- INSERT INTO disease VALUES("cabbage disease", 0.2);
-- INSERT INTO disease VALUES("lettuce disease", 0.35);

-- Patient table
-- INSERT INTO patient VALUES(null, 0, 1, 7, 'lettuce disease');
-- INSERT INTO patient VALUES(null, 1, 0, 3, null);
-- INSERT INTO patient VALUES(null, 0, 0, 7, null);
-- INSERT INTO patient VALUES(null, 2, 1, 0, null);
-- INSERT INTO patient VALUES(null, 3, 1, 3, null);
-- INSERT INTO patient VALUES(null, 0, 1, 7, 'lettuce disease');
-- INSERT INTO patient VALUES(null, 2, 0, 0, null);
-- INSERT INTO patient VALUES(null, 1, 0, 4, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 1, 1, 0, null);
-- INSERT INTO patient VALUES(null, 1, 0, 3, null);
-- INSERT INTO patient VALUES(null, 2, 0, 0, null);
-- INSERT INTO patient VALUES(null, 0, 1, 7, 'lettuce disease');
-- INSERT INTO patient VALUES(null, 0, 1, 0, 'lettuce disease');
-- INSERT INTO patient VALUES(null, 0, 0, 7, null);
-- INSERT INTO patient VALUES(null, 0, 1, 7, 'lettuce disease');
-- INSERT INTO patient VALUES(null, 3, 0, 0, null);
-- INSERT INTO patient VALUES(null, 0, 0, 3, null);
-- INSERT INTO patient VALUES(null, 1, 0, 7, null);
-- INSERT INTO patient VALUES(null, 0, 0, 7, null);
-- INSERT INTO patient VALUES(null, 3, 1, 0, null);
-- INSERT INTO patient VALUES(null, 1, 1, 4, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 3, 1, 2, null);
-- INSERT INTO patient VALUES(null, 3, 1, 2, null);
-- INSERT INTO patient VALUES(null, 0, 1, 3, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 3, 0, 1, null);
-- INSERT INTO patient VALUES(null, 2, 1, 1, null);
-- INSERT INTO patient VALUES(null, 2, 1, 1, null);
-- INSERT INTO patient VALUES(null, 3, 1, 0, 'lettuce disease');
-- INSERT INTO patient VALUES(null, 1, 0, 3, null);
-- INSERT INTO patient VALUES(null, 3, 1, 0, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 0, 1, 7, null);
-- INSERT INTO patient VALUES(null, 3, 0, 5, null);
-- INSERT INTO patient VALUES(null, 0, 0, 7, null);
-- INSERT INTO patient VALUES(null, 3, 1, 4, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 2, 1, 1, null);
-- INSERT INTO patient VALUES(null, 3, 1, 2, null);
-- INSERT INTO patient VALUES(null, 1, 0, 2, null);
-- INSERT INTO patient VALUES(null, 0, 1, 1, null);
-- INSERT INTO patient VALUES(null, 2, 0, 3, null);
-- INSERT INTO patient VALUES(null, 1, 1, 4, null);
-- INSERT INTO patient VALUES(null, 1, 0, 0, null);
-- INSERT INTO patient VALUES(null, 1, 1, 0, null);
-- INSERT INTO patient VALUES(null, 3, 1, 4, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 2, 0, 2, null);
-- INSERT INTO patient VALUES(null, 2, 1, 4, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 2, 1, 6, null);
-- INSERT INTO patient VALUES(null, 2, 1, 6, null);
-- INSERT INTO patient VALUES(null, 2, 0, 7, null);
-- INSERT INTO patient VALUES(null, 2, 0, 7, null);
-- INSERT INTO patient VALUES(null, 0, 1, 0, null);
-- INSERT INTO patient VALUES(null, 3, 0, 0, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 1, 0, 2, null);
-- INSERT INTO patient VALUES(null, 3, 1, 5, null);
-- INSERT INTO patient VALUES(null, 2, 1, 4, null);
-- INSERT INTO patient VALUES(null, 3, 1, 1, null);
-- INSERT INTO patient VALUES(null, 2, 0, 4, null);
-- INSERT INTO patient VALUES(null, 3, 1, 4, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 0, 1, 4, 'lettuce disease');
-- INSERT INTO patient VALUES(null, 1, 1, 0, null);
-- INSERT INTO patient VALUES(null, 1, 1, 7, 'lettuce disease');
-- INSERT INTO patient VALUES(null, 0, 0, 2, null);
-- INSERT INTO patient VALUES(null, 3, 1, 3, null);
-- INSERT INTO patient VALUES(null, 0, 0, 0, null);
-- INSERT INTO patient VALUES(null, 1, 0, 2, null);
-- INSERT INTO patient VALUES(null, 0, 1, 4, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 3, 1, 2, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 2, 0, 4, null);
-- INSERT INTO patient VALUES(null, 2, 0, 1, null);
-- INSERT INTO patient VALUES(null, 0, 1, 4, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 0, 1, 3, null);
-- INSERT INTO patient VALUES(null, 3, 1, 2, null);
-- INSERT INTO patient VALUES(null, 1, 0, 4, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 0, 1, 2, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 1, 1, 4, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 3, 1, 2, null);
-- INSERT INTO patient VALUES(null, 2, 1, 4, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 3, 1, 5, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 3, 1, 4, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 2, 0, 3, null);
-- INSERT INTO patient VALUES(null, 3, 1, 4, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 2, 1, 5, null);
-- INSERT INTO patient VALUES(null, 3, 0, 7, null);
-- INSERT INTO patient VALUES(null, 3, 1, 4, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 1, 1, 3, null);
-- INSERT INTO patient VALUES(null, 2, 1, 4, null);
-- INSERT INTO patient VALUES(null, 0, 1, 7, 'lettuce disease');
-- INSERT INTO patient VALUES(null, 2, 0, 7, null);
-- INSERT INTO patient VALUES(null, 3, 0, 5, null);
-- INSERT INTO patient VALUES(null, 2, 1, 1, null);
-- INSERT INTO patient VALUES(null, 2, 1, 3, null);
-- INSERT INTO patient VALUES(null, 1, 0, 6, null);
-- INSERT INTO patient VALUES(null, 2, 0, 5, null);
-- INSERT INTO patient VALUES(null, 1, 0, 3, null);
-- INSERT INTO patient VALUES(null, 2, 0, 7, null);
-- INSERT INTO patient VALUES(null, 2, 1, 4, 'cabbage disease');
-- INSERT INTO patient VALUES(null, 2, 1, 4, null);
-- INSERT INTO patient VALUES(null, 0, 0, 6, null);
-- INSERT INTO patient VALUES(null, 0, 1, 3, null);
-- INSERT INTO patient VALUES(null, 3, 1, 2, null);
-- INSERT INTO patient VALUES(null, 2, 1, 5, null);
-- INSERT INTO patient VALUES(null, 1, 1, 6, null);
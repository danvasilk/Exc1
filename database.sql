create TABLE owners (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    surname VARCHAR(255),
    city VARCHAR(255)
);

create TABLE cars (
    id SERIAL PRIMARY KEY,
    brand VARCHAR(255),
    year VARCHAR(255),
    state_number VARCHAR(255),
    user_id INTEGER,
    FOREIGN KEY (user_id) REFERENCES owners (id)
);

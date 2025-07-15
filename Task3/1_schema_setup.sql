-- Table 1: Events
CREATE TABLE events (
    event_id SERIAL PRIMARY KEY,
    event_name VARCHAR(255) NOT NULL,
    event_date DATE,
    event_location VARCHAR(255),
    event_description TEXT
);

-- Table 2: Attendees
CREATE TABLE attendees (
    attendee_id SERIAL PRIMARY KEY,
    attendee_name VARCHAR(255) NOT NULL,
    attendee_phone VARCHAR(20),
    attendee_email VARCHAR(255) UNIQUE,
    attendee_city VARCHAR(100)
);

-- Table 3: Registrations
CREATE TABLE registrations (
    registration_id SERIAL PRIMARY KEY,
    event_id INT NOT NULL REFERENCES events(event_id) ON DELETE CASCADE, -- will delete registrations if the event is deleted
    attendee_id INT NOT NULL REFERENCES attendees(attendee_id) ON DELETE CASCADE, -- will delete registrations if the attendee is deleted
    registration_date DATE DEFAULT CURRENT_DATE, -- default to current date
    registration_amount NUMERIC(10, 2),
    UNIQUE (event_id, attendee_id) -- ensures that an attendee can register for an event only once
);

-- inserting sample data into table 'events'
INSERT INTO events (event_name, event_date, event_location, event_description) VALUES
('SQL for Beginners Workshop', '2025-08-20', 'Gdańsk, Olivia Centre', 'Intensywne warsztaty z podstaw SQL dla analityków danych.'),
('Advanced Python Conference', '2025-09-10', 'Warszawa, PGE Narodowy', 'Trzydniowa konferencja poświęcona zaawansowanym technikom w Pythonie.'),
('Data Visualization with Tableau', '2025-09-25', 'Online Webinar', 'Webinar na żywo pokazujący najlepsze praktyki w tworzeniu dashboardów w Tableau.'),
('Project Management Summit', '2025-10-05', 'Kraków, ICE Congress Centre', 'Spotkanie liderów branży zarządzania projektami.');

-- inserting sample data into table 'attendees'
INSERT INTO attendees (attendee_name, attendee_phone, attendee_email, attendee_city) VALUES
('Jan Kowalski', '111222333', 'jan.kowalski@email.com', 'Gdańsk'),
('Anna Nowak', '222333444', 'anna.nowak@email.com', 'Warszawa'),
('Piotr Wiśniewski', '333444555', 'piotr.wisniewski@email.com', 'Kraków'),
('Katarzyna Wójcik', '444555666', 'katarzyna.wojcik@email.com', 'Gdynia'),
('Tomasz Zieliński', '555666777', 'tomasz.zielinski@email.com', 'Sopot'),
('Magdalena Kamińska', '666777888', 'magdalena.kaminska@email.com', 'Warszawa');

-- inserting sample data into table 'registrations'
-- 'SQL for Beginners Workshop' (event_id = 1)
INSERT INTO registrations (event_id, attendee_id, registration_date, registration_amount) VALUES
(1, 1, '2025-07-10', 499.00), -- Jan Kowalski
(1, 4, '2025-07-11', 499.00), -- Katarzyna Wójcik
(1, 5, '2025-07-12', 499.00); -- Tomasz Zieliński

-- 'Advanced Python Conference' (event_id = 2)
INSERT INTO registrations (event_id, attendee_id, registration_date, registration_amount) VALUES
(2, 2, '2025-07-15', 1200.00), -- Anna Nowak
(2, 6, '2025-07-16', 1200.00); -- Magdalena Kamińska

-- 'Data Visualization with Tableau' (event_id = 3)
INSERT INTO registrations (event_id, attendee_id, registration_date, registration_amount) VALUES
(3, 1, '2025-08-01', 150.00), -- Jan Kowalski
(3, 2, '2025-08-02', 150.00), -- Anna Nowak
(3, 5, '2025-08-05', 150.00); -- Tomasz Zieliński

-- 'Project Management Summit' (event_id = 4)
INSERT INTO registrations (event_id, attendee_id, registration_date, registration_amount) VALUES
(4, 3, '2025-08-20', 950.00); -- Piotr Wiśniewski
-- ===========================
-- Testdata för books
-- ===========================
INSERT INTO books (title, author, isbn, publication_year, category, total_copies, available_copies)
VALUES 
('1984', 'George Orwell', '9780451524935', 1949, 'Dystopian', 5, 3),
('To Kill a Mockingbird', 'Harper Lee', '9780061120084', 1960, 'Fiction', 4, 2),
('The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 1925, 'Classic', 3, 1),
('Pride and Prejudice', 'Jane Austen', '9780141439518', 1813, 'Romance', 4, 4),
('The Catcher in the Rye', 'J.D. Salinger', '9780316769488', 1951, 'Fiction', 6, 5),
('The Hobbit', 'J.R.R. Tolkien', '9780547928227', 1937, 'Fantasy', 7, 7),
('Fahrenheit 451', 'Ray Bradbury', '9781451673319', 1953, 'Dystopian', 3, 0),
('Brave New World', 'Aldous Huxley', '9780060850524', 1932, 'Dystopian', 2, 2),
('Moby Dick', 'Herman Melville', '9781503280786', 1851, 'Adventure', 2, 1),
('War and Peace', 'Leo Tolstoy', '9781400079988', 1869, 'Historical', 3, 3),
('The Lord of the Rings', 'J.R.R. Tolkien', '9780544003415', 1954, 'Fantasy', 5, 2),
('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', '9780590353427', 1997, 'Fantasy', 6, 4),
('The Alchemist', 'Paulo Coelho', '9780061122415', 1988, 'Adventure', 3, 2),
('The Da Vinci Code', 'Dan Brown', '9780307474278', 2003, 'Mystery', 4, 1),
('The Girl with the Dragon Tattoo', 'Stieg Larsson', '9780307454546', 2005, 'Mystery', 5, 5);

-- ===========================
-- Testdata för members
-- ===========================
INSERT INTO members (first_name, last_name, email, phone, membership_date)
VALUES
('Anna', 'Svensson', 'anna.svensson@email.com', '0701234567', '2023-02-10'),
('Erik', 'Johansson', 'erik.johansson@email.com', '0702345678', '2024-01-15'),
('Maria', 'Andersson', 'maria.andersson@email.com', '0703456789', '2024-03-22'),
('Johan', 'Karlsson', 'johan.karlsson@email.com', '0704567890', '2023-11-05'),
('Sara', 'Nilsson', 'sara.nilsson@email.com', '0705678901', '2024-06-17'),
('Lars', 'Olsson', 'lars.olsson@email.com', '0706789012', '2023-12-25'),
('Emma', 'Berg', 'emma.berg@email.com', '0707890123', '2024-07-08'),
('Fredrik', 'Lind', 'fredrik.lind@email.com', '0708901234', '2024-09-14'),
('Karin', 'Hansson', 'karin.hansson@email.com', '0709012345', '2023-10-30'),
('Peter', 'Gustafsson', 'peter.gustafsson@email.com', '0700123456', '2024-02-05');

-- ===========================
-- Testdata för loans
-- ===========================
INSERT INTO loans (book_id, member_id, loan_date, due_date, return_date)
VALUES
(1, 1, '2023-01-05', '2023-01-19', '2023-01-18'),
(2, 2, '2023-03-12', '2023-03-26', NULL),
(3, 3, '2023-04-20', '2023-05-04', '2023-05-03'),
(4, 4, '2023-06-01', '2023-06-15', NULL),
(5, 5, '2023-07-10', '2023-07-24', '2023-07-30'), -- försenad
(6, 6, '2023-08-05', '2023-08-19', NULL),
(7, 7, '2023-09-15', '2023-09-29', '2023-09-28'),
(8, 8, '2023-10-08', '2023-10-22', NULL),
(9, 9, '2023-11-12', '2023-11-26', '2023-11-25'),
(10, 10, '2023-12-01', '2023-12-15', NULL),
(1, 2, '2024-01-10', '2024-01-24', '2024-01-25'), -- försenad
(2, 3, '2024-02-05', '2024-02-19', NULL),
(3, 4, '2024-03-01', '2024-03-15', '2024-03-14'),
(4, 5, '2024-04-12', '2024-04-26', NULL),
(5, 6, '2024-05-20', '2024-06-03', NULL),
(6, 7, '2024-06-01', '2024-06-15', '2024-06-14'),
(7, 8, '2024-07-10', '2024-07-24', NULL),
(8, 9, '2024-08-05', '2024-08-19', '2024-08-18'),
(9, 10, '2024-09-15', '2024-09-29', NULL),
(10, 1, '2024-10-01', '2024-10-15', '2024-10-20'); -- försenad


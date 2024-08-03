create database library_managment_system;
use library_managment_system;
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(20),
    Age INT,
    Address VARCHAR(100),
    Email VARCHAR(30),
    PhoneNumber VARCHAR(15)
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(30),
    Author VARCHAR(30),
    Publisher VARCHAR(50),
    YearOfPublication INT,
    ISBN VARCHAR(20)
);

CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(100),
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15)
);

CREATE TABLE StudentBooks (
    StudentID INT,
    BookID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    PRIMARY KEY (StudentID, BookID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

CREATE TABLE TeacherBooks (
    TeacherID INT,
    BookID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    PRIMARY KEY (TeacherID, BookID),
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
insert into Students values
(1, 'Shivanshu Gaurav', 21, 'Patna Bihar', 'shivanshugaurav@gmail.com',8764563765),
(2, 'Himanshu Sharma', 24, 'Jaipur Rajesthan', 'himanshusharma@gmail.com',8762363765),
(3, 'Gopal Singh Shekhwat', 23, 'Jaipur Rajesthan', 'gopalsinghshekhawat@gmail.com',9464563765),
(4, 'Saurabh Joshi', 25, 'Jaipur Rajesthan', 'saurabhjoshi@gmail.com',9462365465),
(5, 'Sumit Kumar 1', 23, 'Hazipur Bihar', 'sumitkumar@gmail.com',9464563325),
(6, 'Sumit Kumar 2', 24, 'Patna Bihar', 'sumitkumar2@gmail.com',9464576865),
(7, 'Abhishek Kumar', 23, 'Patna Bihar', 'Abhishek Kumar@gmail.com',9464521765),
(8, 'Ritu Bharti', 23, 'Patna Bihar', 'ritubharti@gmail.com',8264563765),
(9, 'Sana Ambareen', 20, 'Hajipur Bihar', 'sanaambareen@gmail.com',9464569995),
(10, 'Nikhil Kumar', 23, 'Saharsa Bihar', 'nikhilkumar@gmail.com',9469893765),
(11, 'Sangita Kumari', 22, 'Nalanda Bihar', 'sangitakumari@gmail.com',9464987765),
(12, 'Gagan Kumar Mishra', 24, 'Begusarai Bihar', 'gagankumarmishra@gmail.com',9974563765),
(13, 'Harshika Sharma', 22, 'Patna Bihar', 'harshikasharma@gmail.com',9464563887),
(14, 'Nisha Kumari', 21, 'Patna Bihar', 'nishakumari@gmail.com',9467563765),
(15, 'Nandita Kumari', 21, 'Patna Bihar', 'nanditakumari@gmail.com',9488563765),
(16, 'Pankaj Kumar Sharma', 26, 'Mokama Bihar', 'pankajkumarsharma@gmail.com',9464563888),
(17, 'Astuty Srivastava', 23, 'Begusarai Bihar', 'astutysrivastava@gmail.com',9478863765),
(18, 'Mannu Kumar', 24, 'Hajipur Bihar', 'mannukumar@gmail.com',9464886765),
(19, 'Dharamveer Kumar', 23, 'Hajipur Bihar', 'dharamveerkumar@gmail.com',8464563765);

INSERT INTO Books (BookID, Title, Author, Publisher, YearOfPublication, ISBN) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', 1925, '9780743273565'),
(2, '1984', 'George Orwell', 'Secker & Warburg', 1949, '9780451524935'),
(3, 'To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott & Co.', 1960, '9780061120084'),
(4, 'Pride and Prejudice', 'Jane Austen', 'T. Egerton', 1813, '9781503290563'),
(5, 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', 1951, '9780316769488'),
(6, 'The Hobbit', 'J.R.R. Tolkien', 'George Allen & Unwin', 1937, '9780547928227'),
(7, 'Fahrenheit 451', 'Ray Bradbury', 'Ballantine Books', 1953, '9781451673319'),
(8, 'Moby-Dick', 'Herman Melville', 'Harper & Brothers', 1851, '9781503280786'),
(9, 'War and Peace', 'Leo Tolstoy', 'The Russian Messenger', 1869, '9781420951080'),
(10, 'The Odyssey', 'Homer', 'Penguin Classics', -800, '9780140268867'),
(11, 'Crime and Punishment', 'Fyodor Dostoevsky', 'The Russian Messenger', 1866, '9780486415871'),
(12, 'Brave New World', 'Aldous Huxley', 'Chatto & Windus', 1932, '9780060850524'),
(13, 'Jane Eyre', 'Charlotte Brontë', 'Smith, Elder & Co.', 1847, '9780141441146'),
(14, 'Wuthering Heights', 'Emily Brontë', 'Thomas Cautley Newby', 1847, '9780141439556'),
(15, 'The Divine Comedy', 'Dante Alighieri', 'N/A', 1320, '9780142437222'),
(16, 'The Brothers Karamazov', 'Fyodor Dostoevsky', 'The Russian Messenger', 1880, '9780374528379'),
(17, 'Anna Karenina', 'Leo Tolstoy', 'The Russian Messenger', 1878, '9780143035008'),
(18, 'Don Quixote', 'Miguel de Cervantes', 'Francisco de Robles', 1605, '9780060934347'),
(19, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Harper & Row', 1967, '9780060883287'),
(20, 'The Iliad', 'Homer', 'Penguin Classics', -750, '9780140275360');

insert into Teachers (TeacherID, Name, Department, Email, PhoneNumber) values
(1, 'Salendra Sharma', 'Computer Science', 'salaendrasharma@gmail.com',9887673540),
(2, 'Raj Kumar Sharma', 'Computer Science', 'rajkumarsharma@gmail.com',9856773540),
(3, 'Renu Bhagoria', 'Computer Science', 'renubhagoria@gmail.com',9887773540),
(4, 'Suraj Yadav', 'Computer Science', 'surajyadav@gmail.com',8879673540),
(5, 'Manish khandewal', 'Computer Science', 'manishkhandelwal@gmail.com',9123673540);

INSERT INTO StudentBooks (StudentID, BookID, BorrowDate, ReturnDate) VALUES
(1, 3, '2024-01-10', '2024-01-20'),
(1, 7, '2024-02-15', '2024-02-25'),
(2, 1, '2024-03-05', '2024-03-15'),
(2, 4, '2024-03-20', '2024-03-30'),
(3, 2, '2024-04-10', '2024-04-20'),
(3, 8, '2024-04-25', '2024-05-05'),
(4, 5, '2024-05-10', '2024-05-20'),
(4, 6, '2024-05-25', '2024-06-05'),
(5, 9, '2024-06-10', '2024-06-20'),
(5, 10, '2024-06-25', '2024-07-05'),
(6, 11, '2024-07-10', '2024-07-20'),
(6, 12, '2024-07-25', '2024-08-05'),
(7, 13, '2024-08-10', '2024-08-20'),
(7, 14, '2024-08-25', '2024-09-05'),
(8, 15, '2024-09-10', '2024-09-20'),
(8, 16, '2024-09-25', '2024-10-05'),
(9, 17, '2024-10-10', '2024-10-20'),
(9, 18, '2024-10-25', '2024-11-05'),
(10, 19, '2024-11-10', '2024-11-20'),
(10, 20, '2024-11-25', '2024-12-05'),
(11, 1, '2024-12-10', '2024-12-20'),
(11, 2, '2024-12-25', '2025-01-05'),
(12, 3, '2025-01-10', '2025-01-20'),
(12, 4, '2025-01-25', '2025-02-05'),
(13, 5, '2025-02-10', '2025-02-20'),
(13, 6, '2025-02-25', '2025-03-05'),
(14, 7, '2025-03-10', '2025-03-20'),
(14, 8, '2025-03-25', '2025-04-05'),
(15, 9, '2025-04-10', '2025-04-20'),
(15, 10, '2025-04-25', '2025-05-05'),
(16, 11, '2025-05-10', '2025-05-20'),
(16, 12, '2025-05-25', '2025-06-05'),
(17, 13, '2025-06-10', '2025-06-20'),
(17, 14, '2025-06-25', '2025-07-05'),
(18, 15, '2025-07-10', '2025-07-20'),
(18, 16, '2025-07-25', '2025-08-05'),
(19, 17, '2025-08-10', '2025-08-20'),
(19, 18, '2025-08-25', '2025-05-20');

INSERT INTO TeacherBooks (TeacherID, BookID, BorrowDate, ReturnDate) VALUES
(1, 1, '2024-01-05', '2024-01-15'),
(1, 3, '2024-02-10', '2024-02-20'),
(2, 4, '2024-03-05', '2024-03-15'),
(2, 6, '2024-04-10', '2024-04-20'),
(3, 7, '2024-05-15', '2024-05-25'),
(3, 9, '2024-06-20', '2024-06-30'),
(4, 2, '2024-07-05', '2024-07-15'),
(4, 8, '2024-08-10', '2024-08-20'),
(5, 5, '2024-09-15', '2024-09-25'),
(5, 10, '2024-10-01', '2024-10-10');




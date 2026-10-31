create database library_management_system;
use library_management_system;
select database();

create table lms_book_issue(
	book_issue_no int primary key,
    member_id varchar(10),
    book_code varchar(10),
    date_issue date,
    date_return date,
    date_returned date,
    book_issue_status varchar(20),
    fine_range varchar(3)
    );
    
    show tables;
    desc lms_book_issue;
    
    create table lms_members(
		member_id varchar(10) primary key,
        member_name varchar(30),
        city varchar(20),
        date_register date,
        date_expire date,
        membership_status varchar (15)
        );
	desc lms_members;
    
    create table lms_book_details(
		book_code varchar(10) primary key,
        book_title varchar(50),
        category varchar(15),
        author varchar(30),
        publication varchar (30),
        publish_date date,
        book_edition int,
        price decimal(10,2),
        rack_num varchar(3),
        date_arrival date,
        supplier_id varchar(3)
        );
	desc lms_book_details;
    
    create table lms_fine_details(
		fine_range varchar(3) primary key,
        fine_amount int );
        
        create table lms_suppliers_details(
			supplier_id varchar(3) primary key,
            supplier_name varchar(30),
            address varchar(50),
            contact varchar(15),
            email varchar(100)
            );
            
-- foreign keys
alter table lms_book_issue
add constraint fk_book_issue_member
foreign key (member_id)
references lms_members(member_id);
desc lms_book_issue;

alter table lms_book_issue
add constraint fk_book_issue_book
foreign key (book_code)
references lms_book_details(book_code);

alter table lms_book_issue
add constraint fk_book_issue_fine
foreign key (fine_range)
references lms_fine_details(fine_range);

alter table lms_book_details
add constraint fk_book_supplier
foreign key(supplier_id)
references lms_suppliers_details(supplier_id);

-- records for lms fine details
insert into lms_fine_details values('R1',100);
insert into lms_fine_details values('R2', 200),
	('R3', 300),
	('R4', 400),
	('R5', 500),
	('R6', 600),
	('R7', 700),
	('R8', 800),
	('R9', 900),
	('R10', 1000),
	('R11', 1100),
	('R12', 1200),
	('R13', 1300),
	('R14', 1400),
	('R15', 1500),
	('R16', 1600),
	('R17', 1700),
	('R18', 1800),
	('R19', 1900),
	('R20', 2000);
   
   -- records for lms suppliers details
insert into lms_suppliers_details(supplier_id,supplier_name,address,contact,email)
values
('S01', 'ABC Books', 'Bangalore', '9876543210', 'abc@gmail.com'),
('S02', 'Book World', 'Mysore', '9876543211', 'bookworld@gmail.com'),
('S03', 'Readers Hub', 'Chennai', '9876543212', 'readers@gmail.com'),
('S04', 'Knowledge Books', 'Hyderabad', '9876543213', 'knowledge@gmail.com'),
('S05', 'Bright Books', 'Vijayawada', '9876543214', 'bright@gmail.com'),
('S06', 'Page Turner', 'Mumbai', '9876543215', 'page@gmail.com'),
('S07', 'Book Point', 'Delhi', '9876543216', 'point@gmail.com'),
('S08', 'Classic Reads', 'Pune', '9876543217', 'classic@gmail.com'),
('S09', 'Readers Corner', 'Kochi', '9876543218', 'corner@gmail.com'),
('S10', 'Smart Books', 'Kolkata', '9876543219', 'smart@gmail.com'),
('S11', 'New Leaf Books', 'Jaipur', '9876543220', 'leaf@gmail.com'),
('S12', 'City Books', 'Lucknow', '9876543221', 'city@gmail.com'),
('S13', 'Wisdom House', 'Bhopal', '9876543222', 'wisdom@gmail.com'),
('S14', 'Book Nest', 'Patna', '9876543223', 'nest@gmail.com'),
('S15', 'Readers Choice', 'Surat', '9876543224', 'choice@gmail.com'),
('S16', 'Book Avenue', 'Indore', '9876543225', 'avenue@gmail.com'),
('S17', 'Open Pages', 'Goa', '9876543226', 'openpages@gmail.com'),
('S18', 'Book Bridge', 'Nagpur', '9876543227', 'bridge@gmail.com'),
('S19', 'Learn More Books', 'Kochi', '9876543228', 'learnmore@gmail.com'),
('S20', 'Universal Books', 'Bangalore', '9876543229', 'universal@gmail.com');


-- records for lms members

insert into lms_members
(member_id, member_name, city, date_register, date_expire, membership_status)
values
('M001', 'Ravi Kumar', 'Bangalore', '2026-01-01', '2026-12-31', 'Active'),
('M002', 'Priya Sharma', 'Mysore', '2026-01-02', '2026-12-31', 'Active'),
('M003', 'Arjun Reddy', 'Hyderabad', '2026-01-03', '2026-12-31', 'Active'),
('M004', 'Sneha Rao', 'Chennai', '2026-01-04', '2026-12-31', 'Active'),
('M005', 'Kiran Patel', 'Mumbai', '2026-01-05', '2026-12-31', 'Active'),
('M006', 'Ananya Das', 'Kolkata', '2026-01-06', '2026-12-31', 'Active'),
('M007', 'Rahul Verma', 'Delhi', '2026-01-07', '2026-12-31', 'Active'),
('M008', 'Divya Nair', 'Kochi', '2026-01-08', '2026-12-31', 'Active'),
('M009', 'Vikram Singh', 'Jaipur', '2026-01-09', '2026-12-31', 'Active'),
('M010', 'Pooja Iyer', 'Pune', '2026-01-10', '2026-12-31', 'Active'),
('M011', 'Manoj Rao', 'Vijayawada', '2026-01-11', '2026-12-31', 'Active'),
('M012', 'Keerthi Reddy', 'Guntur', '2026-01-12', '2026-12-31', 'Active'),
('M013', 'Sanjay Kumar', 'Bhopal', '2026-01-13', '2026-12-31', 'Active'),
('M014', 'Meena Joshi', 'Lucknow', '2026-01-14', '2026-12-31', 'Active'),
('M015', 'Ajay Menon', 'Nagpur', '2026-01-15', '2026-12-31', 'Active'),
('M016', 'Lakshmi Devi', 'Patna', '2026-01-16', '2026-12-31', 'Active'),
('M017', 'Nikhil Shah', 'Surat', '2026-01-17', '2026-12-31', 'Active'),
('M018', 'Sowmya Rani', 'Indore', '2026-01-18', '2026-12-31', 'Active'),
('M019', 'Tarun Bose', 'Goa', '2026-01-19', '2026-12-31', 'Active'),
('M020', 'Harini Reddy', 'Bangalore', '2026-01-20', '2026-12-31', 'Active');

select*from lms_members;

-- records for lms_book_details
insert into lms_book_details
(book_code, book_title, category, author, publication,
 publish_date, book_edition, price, rack_num, date_arrival, supplier_id)
values
('B001', 'Python Basics', 'Programming', 'John Smith', 'Tech Press', '2023-01-10', 1, 450.00, 'R01', '2026-01-01', 'S01'),
('B002', 'Java Programming', 'Programming', 'James Gosling', 'Learn Books', '2022-03-15', 2, 550.00, 'R02', '2026-01-02', 'S02'),
('B003', 'C Programming', 'Programming', 'Dennis Ritchie', 'Tech Press', '2021-05-20', 3, 350.00, 'R03', '2026-01-03', 'S03'),
('B004', 'SQL Fundamentals', 'Database', 'Mark Lee', 'Data House', '2023-06-12', 1, 400.00, 'R04', '2026-01-04', 'S04'),
('B005', 'Web Development', 'Technology', 'Sara Jones', 'Web Press', '2022-08-18', 2, 600.00, 'R05', '2026-01-05', 'S05'),
('B006', 'Operating Systems', 'Computer', 'Abraham Silberschatz', 'Tech Press', '2020-04-10', 4, 700.00, 'R06', '2026-01-06', 'S06'),
('B007', 'Computer Networks', 'Computer', 'Andrew Tanenbaum', 'Learn Books', '2021-09-22', 3, 650.00, 'R07', '2026-01-07', 'S07'),
('B008', 'Data Structures', 'Programming', 'Robert Lafore', 'Code Books', '2023-02-14', 2, 500.00, 'R08', '2026-01-08', 'S08'),
('B009', 'Machine Learning', 'Technology', 'Tom Mitchell', 'AI Press', '2022-11-11', 1, 750.00, 'R09', '2026-01-09', 'S09'),
('B010', 'Artificial Intelligence', 'Technology', 'Stuart Russell', 'AI Press', '2023-04-05', 2, 800.00, 'R10', '2026-01-10', 'S10'),
('B011', 'Database Design', 'Database', 'Ramez Elmasri', 'Data House', '2021-07-19', 3, 580.00, 'R11', '2026-01-11', 'S11'),
('B012', 'Computer Architecture', 'Computer', 'John Hennessy', 'Tech Press', '2020-12-01', 2, 720.00, 'R12', '2026-01-12', 'S12'),
('B013', 'Cloud Computing', 'Technology', 'Raj Kumar', 'Cloud Press', '2023-03-08', 1, 620.00, 'R13', '2026-01-13', 'S13'),
('B014', 'Cyber Security', 'Technology', 'William Stallings', 'Secure Books', '2022-10-16', 2, 680.00, 'R14', '2026-01-14', 'S14'),
('B015', 'Linux Essentials', 'Computer', 'Richard Blum', 'Code Books', '2021-02-25', 3, 480.00, 'R15', '2026-01-15', 'S15'),
('B016', 'Software Engineering', 'Technology', 'Ian Sommerville', 'Learn Books', '2023-05-17', 4, 750.00, 'R16', '2026-01-16', 'S16'),
('B017', 'Algorithms', 'Programming', 'Thomas Cormen', 'Code Books', '2022-01-30', 3, 850.00, 'R17', '2026-01-17', 'S17'),
('B018', 'Data Science', 'Technology', 'Joel Grus', 'AI Press', '2023-07-21', 1, 590.00, 'R18', '2026-01-18', 'S18'),
('B019', 'Computer Fundamentals', 'Computer', 'Peter Norton', 'Tech Press', '2020-06-09', 2, 320.00, 'R19', '2026-01-19', 'S19'),
('B020', 'Advanced SQL', 'Database', 'Joe Celko', 'Data House', '2023-09-13', 1, 640.00, 'R20', '2026-01-20', 'S20');

show tables;
select*from lms_book_details;

-- records for lms_book_issue
insert into lms_book_issue
(book_issue_no, member_id, book_code, date_issue,
 date_return, date_returned, book_issue_status, fine_range)
values
(1, 'M001', 'B001', '2026-01-01', '2026-01-15', '2026-01-14', 'Returned', 'R1'),
(2, 'M002', 'B002', '2026-01-02', '2026-01-16', '2026-01-18', 'Returned', 'R2'),
(3, 'M003', 'B003', '2026-01-03', '2026-01-17', '2026-01-16', 'Returned', 'R1'),
(4, 'M004', 'B004', '2026-01-04', '2026-01-18', '2026-01-20', 'Returned', 'R3'),
(5, 'M005', 'B005', '2026-01-05', '2026-01-19', '2026-01-19', 'Returned', 'R1'),
(6, 'M006', 'B006', '2026-01-06', '2026-01-20', '2026-01-22', 'Returned', 'R2'),
(7, 'M007', 'B007', '2026-01-07', '2026-01-21', '2026-01-20', 'Returned', 'R1'),
(8, 'M008', 'B008', '2026-01-08', '2026-01-22', '2026-01-24', 'Returned', 'R3'),
(9, 'M009', 'B009', '2026-01-09', '2026-01-23', '2026-01-23', 'Returned', 'R1'),
(10, 'M010', 'B010', '2026-01-10', '2026-01-24', '2026-01-26', 'Returned', 'R2'),
(11, 'M011', 'B011', '2026-01-11', '2026-01-25', '2026-01-24', 'Returned', 'R1'),
(12, 'M012', 'B012', '2026-01-12', '2026-01-26', '2026-01-28', 'Returned', 'R3'),
(13, 'M013', 'B013', '2026-01-13', '2026-01-27', '2026-01-27', 'Returned', 'R1'),
(14, 'M014', 'B014', '2026-01-14', '2026-01-28', '2026-01-30', 'Returned', 'R2'),
(15, 'M015', 'B015', '2026-01-15', '2026-01-29', '2026-01-28', 'Returned', 'R1'),
(16, 'M016', 'B016', '2026-01-16', '2026-01-30', '2026-02-01', 'Returned', 'R3'),
(17, 'M017', 'B017', '2026-01-17', '2026-01-31', '2026-01-31', 'Returned', 'R1'),
(18, 'M018', 'B018', '2026-01-18', '2026-02-01', '2026-02-03', 'Returned', 'R2'),
(19, 'M019', 'B019', '2026-01-19', '2026-02-02', '2026-02-01', 'Returned', 'R1'),
(20, 'M020', 'B020', '2026-01-20', '2026-02-03', '2026-02-05', 'Returned', 'R3');

update lms_book_issue
set book_issue_status='YES' 
where book_issue_no between 1 and 10;
update lms_book_issue
set book_issue_status='NO'
where book_issue_no between 11 and 20;
select*from lms_book_issue;


UPDATE lms_book_issue
SET date_issue = '2012-04-01'
WHERE book_issue_no BETWEEN 1 AND 5;

UPDATE lms_members
SET date_register = '2012-02-15',
    membership_status = 'Temporary'
WHERE member_id BETWEEN 'M001' AND 'M005';

UPDATE LMS_MEMBERS
SET date_expire = '2013-03-15'
WHERE member_id BETWEEN 'M006' AND 'M010';

-- queries TASK 2

/*
1)Write a query to display the member id, member name, city and membership status who are all having life time membership. Hint: Life time membership status is
“active”.
*/

select member_id,member_name,city,membership_status
from lms_members
where membership_status = 'active';

/*
2)Write a query to display the member id, member name who have not returned the books. 
Hint: Book return status is book_issue_status =’Y’ or ‘N’.
*/
select lms_book_issue.member_id,lms_members.member_name
from lms_book_issue
join lms_members
on lms_book_issue.member_id=lms_members.member_id
where lms_book_issue.book_issue_status='NO';

/* 3)Write a query to display the member id, member name who have taken the book with book code ‘B017’.*/
select lms_book_issue.member_id,lms_members.member_name
from lms_book_issue
join lms_members
on lms_book_issue.member_id=lms_members.member_id
where lms_book_issue.book_code= 'B017';

/* 4)Write a query to display the book code, book title and author of the books whose author name begins with ‘P’.*/
select book_code,book_title,author
from lms_book_details
where author like 'p%';

/*
5)Write a query to display the total number of Java books available in library with alias name ‘NO_OF_BOOKS’.
*/
select count(book_title) as NO_OF_java_books
from lms_book_details
where book_title='Java Programming';

/*
6)Write a query to list the category and number of books in each category with alias name ‘NO_OF_BOOKS’.
*/
select category,count(*) as no_of_books_per_category
from lms_book_details
group by category;

/*
7)Write a query to display the number of books published by "Prentice Hall” with the alias name “NO_OF_BOOKS”.
*/
select count(publication) as no_of_books
from lms_book_details
where publication='Code Books';

/*8)Write a query to display the book code, book title of the books which are issued on the date “1st April 2012”.*/
SELECT lms_book_issue.book_code, lms_book_details.book_title
FROM lms_book_issue
JOIN lms_book_details
ON lms_book_issue.book_code = lms_book_details.book_code
WHERE lms_book_issue.date_issue = '2012-04-01';

/*9)Write a query to display the member id, member name, date of registration, 
membership status of the members who registered before "March 2012" and membership status is "Temporary"*/

SELECT member_id, member_name, date_register, membership_status
FROM lms_members
WHERE date_register < '2012-03-01'
AND membership_status = 'Temporary';

/* 10)Write a query to display the member id, member name, 
date of registration and expiry date of the members whose membership expiry date is before APR 2013.*/
SELECT member_id, member_name, date_register, date_expire
FROM lms_members
WHERE date_expire < '2013-04-01';















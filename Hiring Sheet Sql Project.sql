CREATE DATABASE `Hiring_Sheet`;
USE `Hiring_Sheet`;
CREATE TABLE `candidates` (
  `candidate_id` INT AUTO_INCREMENT PRIMARY KEY,
  `first_name` VARCHAR(50) NOT NULL,
  `last_name` VARCHAR(50) NOT NULL,
  `email` VARCHAR(100) NOT NULL UNIQUE,
  `phone` VARCHAR(15),
  `date_applied` DATE,
  `resume` VARCHAR(255)
);
CREATE TABLE `job_positions` (
  `position_id` INT AUTO_INCREMENT PRIMARY KEY,
  `job_title` VARCHAR(100) NOT NULL,
  `department` VARCHAR(50),
  `location` VARCHAR(100),
  `salary_range` VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS `interviews` (
  `interview_id` INT AUTO_INCREMENT PRIMARY KEY,
  `candidate_id` INT NOT NULL,
  `position_id` INT NOT NULL,
  `interview_date` DATETIME NOT NULL,
  `interview_type` VARCHAR(50),
  `interview_status` VARCHAR(50) DEFAULT 'Pending',
  FOREIGN KEY (`candidate_id`) REFERENCES `candidates`(`candidate_id`),
  FOREIGN KEY (`position_id`) REFERENCES `job_positions`(`position_id`)
);
CREATE TABLE `hiring_decisions` (
  `decision_id` INT AUTO_INCREMENT PRIMARY KEY,
  `candidate_id` INT NOT NULL,
  `position_id` INT NOT NULL,
  `decision_date` DATE NOT NULL,
  `decision` VARCHAR(50) DEFAULT 'Pending',
  `offer_salary` DECIMAL(10, 2),
  FOREIGN KEY (`candidate_id`) REFERENCES `candidates`(`candidate_id`),
  FOREIGN KEY (`position_id`) REFERENCES `job_positions`(`position_id`)
);
INSERT INTO `candidates` (`first_name`, `last_name`, `email`, `phone`, `date_applied`, `resume`) VALUES
('John', 'Doe', 'john.doe@example.com', '555-1234', '2025-02-10', 'resume_john.pdf'),
('Jane', 'Smith', 'jane.smith@example.com', '555-5678', '2025-02-12', 'resume_jane.pdf'),
('Michael', 'Brown', 'michael.brown@example.com', '555-9876', '2025-02-15', 'resume_michael.pdf'),
('Emily', 'Johnson', 'emily.johnson@example.com', '555-2345', '2025-02-17', 'resume_emily.pdf'),
('William', 'Williams', 'william.williams@example.com', '555-3456', '2025-02-18', 'resume_william.pdf'),
('Olivia', 'Davis', 'olivia.davis@example.com', '555-4567', '2025-02-19', 'resume_olivia.pdf'),
('James', 'Miller', 'james.miller@example.com', '555-5671', '2025-02-20', 'resume_james.pdf'),
('Sophia', 'Wilson', 'sophia.wilson@example.com', '555-6782', '2025-02-21', 'resume_sophia.pdf'),
('Benjamin', 'Moore', 'benjamin.moore@example.com', '555-7893', '2025-02-22', 'resume_benjamin.pdf'),
('Isabella', 'Taylor', 'isabella.taylor@example.com', '555-8904', '2025-02-23', 'resume_isabella.pdf'),
('Ethan', 'Anderson', 'ethan.anderson@example.com', '555-9015', '2025-02-24', 'resume_ethan.pdf'),
('Mia', 'Thomas', 'mia.thomas@example.com', '555-0126', '2025-02-25', 'resume_mia.pdf'),
('Alexander', 'Jackson', 'alexander.jackson@example.com', '555-1237', '2025-02-26', 'resume_alexander.pdf'),
('Charlotte', 'White', 'charlotte.white@example.com', '555-2348', '2025-02-27', 'resume_charlotte.pdf'),
('Daniel', 'Harris', 'daniel.harris@example.com', '555-3459', '2025-02-28', 'resume_daniel.pdf'),
('Ava', 'Martin', 'ava.martin@example.com', '555-4560', '2025-03-01', 'resume_ava.pdf'),
('Lucas', 'Garcia', 'lucas.garcia@example.com', '555-5672', '2025-03-02', 'resume_lucas.pdf'),
('Zoe', 'Rodriguez', 'zoe.rodriguez@example.com', '555-6783', '2025-03-03', 'resume_zoe.pdf'),
('Henry', 'Lee', 'henry.lee@example.com', '555-7894', '2025-03-04', 'resume_henry.pdf'),
('Amelia', 'Martinez', 'amelia.martinez@example.com', '555-8905', '2025-03-05', 'resume_amelia.pdf');
select * from candidates;
INSERT INTO `job_positions` (`job_title`, `department`, `location`, `salary_range`) VALUES
('Software Engineer', 'Engineering', 'New York, NY', '₹6,640,000 - ₹8,300,000'),
('Marketing Specialist', 'Marketing', 'Los Angeles, CA', '₹4,980,000 - ₹6,640,000'),
('Product Manager', 'Product', 'Chicago, IL', '₹7,470,000 - ₹9,960,000'),
('Data Scientist', 'Engineering', 'San Francisco, CA', '₹9,130,000 - ₹11,620,000'),
('UX Designer', 'Design', 'Austin, TX', '₹6,225,000 - ₹7,885,000'),
('HR Manager', 'Human Resources', 'Dallas, TX', '₹5,820,000 - ₹7,470,000'),
('Sales Executive', 'Sales', 'Boston, MA', '₹4,150,000 - ₹5,820,000'),
('Business Analyst', 'Business', 'Seattle, WA', '₹7,055,000 - ₹8,740,000'),
('Content Strategist', 'Marketing', 'Denver, CO', '₹4,980,000 - ₹6,640,000'),
('Network Engineer', 'Engineering', 'Miami, FL', '₹6,640,000 - ₹8,300,000'),
('Project Manager', 'Product', 'Chicago, IL', '₹7,890,000 - ₹9,960,000'),
('Accountant', 'Finance', 'New York, NY', '₹4,575,000 - ₹6,225,000'),
('Graphic Designer', 'Design', 'Los Angeles, CA', '₹5,395,000 - ₹7,055,000'),
('Full Stack Developer', 'Engineering', 'San Francisco, CA', '₹8,300,000 - ₹10,790,000'),
('Customer Support Representative', 'Customer Service', 'Phoenix, AZ', '₹3,320,000 - ₹4,980,000'),
('Operations Manager', 'Operations', 'Atlanta, GA', '₹7,470,000 - ₹9,130,000'),
('Data Analyst', 'Engineering', 'Dallas, TX', '₹6,225,000 - ₹7,885,000'),
('Chief Marketing Officer', 'Marketing', 'San Francisco, CA', '₹12,450,000 - ₹16,600,000'),
('Software Developer Intern', 'Engineering', 'Remote', '₹1,660,000 - ₹3,320,000'),
('Senior Product Manager', 'Product', 'Los Angeles, CA', '₹9,960,000 - ₹12,450,000');
select * from job_positions;
INSERT INTO `interviews` (`candidate_id`, `position_id`, `interview_date`, `interview_type`, `interview_status`) VALUES
(1, 1, '2025-02-20 10:00:00', 'Phone', 'Completed'),
(2, 2, '2025-02-22 14:00:00', 'Virtual', 'Scheduled'),
(3, 3, '2025-02-25 09:00:00', 'In-person', 'Pending'),
(4, 4, '2025-02-26 11:00:00', 'Phone', 'Completed'),
(5, 5, '2025-02-27 15:00:00', 'Virtual', 'Scheduled'),
(6, 6, '2025-03-01 10:00:00', 'In-person', 'Pending'),
(7, 7, '2025-03-02 16:00:00', 'Phone', 'Completed'),
(8, 8, '2025-03-03 14:00:00', 'Virtual', 'Scheduled'),
(9, 9, '2025-03-05 09:00:00', 'In-person', 'Pending'),
(10, 10, '2025-03-06 10:00:00', 'Phone', 'Completed'),
(11, 11, '2025-03-07 13:00:00', 'Virtual', 'Scheduled'),
(12, 12, '2025-03-08 11:00:00', 'In-person', 'Pending'),
(13, 13, '2025-03-09 14:00:00', 'Phone', 'Completed'),
(14, 14, '2025-03-10 15:00:00', 'Virtual', 'Scheduled'),
(15, 15, '2025-03-12 09:00:00', 'In-person', 'Pending'),
(16, 16, '2025-03-13 10:00:00', 'Phone', 'Completed'),
(17, 17, '2025-03-14 13:00:00', 'Virtual', 'Scheduled'),
(18, 18, '2025-03-15 14:00:00', 'In-person', 'Pending'),
(19, 19, '2025-03-17 11:00:00', 'Phone', 'Completed'),
(20, 20, '2025-03-18 12:00:00', 'Virtual', 'Scheduled');
select * from interviews;
INSERT INTO `hiring_decisions` (`candidate_id`, `position_id`, `decision_date`, `decision`, `offer_salary`) VALUES
(1, 1, '2025-02-21', 'Hired', 95000.00),
(2, 2, '2025-02-23', 'Rejected', NULL),
(3, 3, '2025-02-26', 'Pending', NULL),
(4, 4, '2025-02-27', 'Hired', 105000.00),
(5, 5, '2025-03-01', 'Rejected', NULL),
(6, 6, '2025-03-02', 'Pending', NULL),
(7, 7, '2025-03-03', 'Hired', 85000.00),
(8, 8, '2025-03-05', 'Rejected', NULL),
(9, 9, '2025-03-06', 'Pending', NULL),
(10, 10, '2025-03-07', 'Hired', 90000.00),
(11, 11, '2025-03-08', 'Rejected', NULL),
(12, 12, '2025-03-09', 'Pending', NULL),
(13, 13, '2025-03-10', 'Hired', 95000.00),
(14, 14, '2025-03-12', 'Rejected', NULL),
(15, 15, '2025-03-13', 'Pending', NULL),
(16, 16, '2025-03-14', 'Hired', 102000.00),
(17, 17, '2025-03-15', 'Rejected', NULL),
(18, 18, '2025-03-17', 'Pending', NULL),
(19, 19, '2025-03-18', 'Hired', 97000.00),
(20, 20, '2025-03-19', 'Rejected', NULL);
select * from hiring_decisions;

#Find all job positions in the Marketing department.#
SELECT * FROM `job_positions` WHERE `department` = 'Marketing';

#Find all interviews scheduled for 2025-02-22.#
SELECT * FROM `interviews` WHERE `interview_date` = '2025-02-22';

#Get the interview status of a candidate by candidate ID.#
SELECT i.`interview_date`, i.`interview_type`, i.`interview_status`
FROM `interviews` i
JOIN `candidates` c ON i.`candidate_id` = c.`candidate_id`
WHERE c.`first_name` = 'John' AND c.`last_name` = 'Doe';

#List all candidates who have been hired for a position.#
SELECT c.`first_name`, c.`last_name`, j.`job_title`, h.`offer_salary`
FROM `hiring_decisions` h
JOIN `candidates` c ON h.`candidate_id` = c.`candidate_id`
JOIN `job_positions` j ON h.`position_id` = j.`position_id`
WHERE h.`decision` = 'Hired';

#Find the total number of candidates who applied for each job position.#
SELECT j.`job_title`, COUNT(c.`candidate_id`) AS `total_applicants`
FROM `job_positions` j
LEFT JOIN `candidates` c ON j.`position_id` = c.`candidate_id`
GROUP BY j.`job_title`;

#Get a list of candidates whose interviews are still pending.#
SELECT c.`first_name`, c.`last_name`, i.`interview_date`
FROM `interviews` i
JOIN `candidates` c ON i.`candidate_id` = c.`candidate_id`
WHERE i.`interview_status` = 'Pending';

#Find the salary range for a specific job position.#
SELECT `salary_range` FROM `job_positions` WHERE `job_title` = 'Software Engineer';

#Get all decisions for candidates, including the decision date and offer salary.#
SELECT c.`first_name`, c.`last_name`, j.`job_title`, h.`decision`, h.`decision_date`, h.`offer_salary`
FROM `hiring_decisions` h
JOIN `candidates` c ON h.`candidate_id` = c.`candidate_id`
JOIN `job_positions` j ON h.`position_id` = j.`position_id`;

#Get the candidates who applied for more than one job.#
SELECT c.`first_name`, c.`last_name`, COUNT(j.`position_id`) AS `job_count`
FROM `candidates` c
JOIN `interviews` i ON c.`candidate_id` = i.`candidate_id`
JOIN `job_positions` j ON i.`position_id` = j.`position_id`
GROUP BY c.`candidate_id`
HAVING COUNT(j.`position_id`) > 1;



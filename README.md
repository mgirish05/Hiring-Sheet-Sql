# Hiring-Sheet MySQL Project

The Hiring-Sheet is a MySQL-based database system designed to manage and track various stages of the recruitment process, including candidates, job positions, interviews, and hiring decisions.

Features

- Candidate Management:  
  The database stores details of candidates, such as their first name, last name, email, phone number, date of application, and the resume file name.

- Job Position Management:  
  It tracks the available job positions, including job titles, departments, locations, and salary ranges, helping recruiters to manage job listings.

- Interview Management:  
  The system allows tracking of candidate interviews, including interview dates, types (e.g., phone, in-person), and their current status (e.g., scheduled, completed, pending).

- Hiring Decision Management:  
  The system records the final decision regarding candidates, including whether they were hired or rejected, the salary offered, and the decision date.

- SQL Queries for Insights:  
  The database supports several SQL queries to extract insights, such as finding candidates for a particular job position, tracking interview statuses, and checking salary ranges.

Technologies

- MySQL:  
  MySQL is used as the relational database management system to store and manage all data related to candidates, job positions, interviews, and hiring decisions.

- SQL:  
  Structured Query Language (SQL) is used for creating tables, inserting data, and querying the database to retrieve useful information.

How to Run

Prerequisites

- Install MySQL on your system.
- Use a MySQL client tool (e.g., MySQL Workbench, PhpMyAdmin) to run SQL queries and interact with the database.

Steps to Run

1. Clone the Repository:  
   Clone this repository to your local system to access the SQL files and project structure.

2. Create the Database:  
   Use the provided SQL scripts to create the `Hiring_Sheet` database and its corresponding tables.

3. Populate the Database:  
   Insert sample data into the tables (candidates, job positions, interviews, and hiring decisions) to simulate a real-world scenario.

4. Run Queries:  
   Execute queries to retrieve specific information, such as finding candidates who applied for certain positions or tracking the status of interviews.

Usage

- Add New Candidate:  
  Insert a new candidate's details into the `candidates` table to track their application.

- Add Job Position:  
  Insert a new job position into the `job_positions` table to make it available for candidates to apply.

- Schedule an Interview:  
  Add interview details for candidates in the `interviews` table, including the interview date, type, and status.

- Record Hiring Decision:  
  Insert the hiring decision data into the `hiring_decisions` table, including whether the candidate was hired, rejected, or is pending a decision.

Example Run

1. Managing Candidate Applications:  
   After inserting candidate details, recruiters can track all applicants, check their resume, and manage communication during the interview process.

2. Tracking Job Positions:  
   You can view all available job positions and their associated details, such as salary range, department, and location.

3. Interview Scheduling:  
   Recruiters can schedule interviews and monitor their statuses (e.g., completed, pending).

4. Hiring Decisions:  
   Hiring managers can record decisions, including the offer salary and whether the candidate was hired or rejected.

Future Enhancements

- Automated Email Notifications:  
  Future versions of the project can send automated notifications to candidates and recruiters regarding interview schedules and hiring decisions.

- Web Interface:  
  A user-friendly web interface could be developed to allow recruiters to interact with the data more intuitively, without needing to work directly with SQL.

- Advanced Reporting:  
  Implementing advanced reporting and analytics tools would provide insights into the recruitment process, such as time-to-hire or the average number of interviews per candidate.

- Integration with Job Portals:  
  The system could be integrated with job portals (like LinkedIn or Indeed) to automatically import job applications and update candidate statuses.


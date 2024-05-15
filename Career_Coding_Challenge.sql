-- Career Hub (Pratham Katariya)

DROP DATABASE IF EXISTS careerhub;

create database careerhub;

use careerhub;

-- schema creation 


create table Companies(
	CompanyID int PRIMARY KEY,
    CompanyName varchar(50),
    Location varchar(255)
);

create table Jobs(
	JobID int PRIMARY KEY,
    CompanyID int,
    JobTitle varchar(255) ,
    JobDescription text,
    JobLocation varchar(255),
    Salary decimal(10,2),
    JobType varchar(50) ,  -- eg. (full-time, part-time, contract) 
    PostedDate datetime,
    FOREIGN KEY(CompanyID) REFERENCES Companies(CompanyID) ON DELETE CASCADE
);

create table Applicants(
	ApplicantID int PRIMARY KEY,
    FirstName varchar(40),
    LastName varchar(40),
    Email varchar(50),
    Phone varchar(10),
    Resume text
);

create table Applications(
	ApplicationID int PRIMARY KEY,
    JobID int,
    ApplicantID int,
    ApplicationDate datetime,
    CoverLetter text,
    FOREIGN KEY(JobID) REFERENCES Jobs(JobID) ON DELETE CASCADE,
    FOREIGN KEY(ApplicantID) REFERENCES Applicants(ApplicantID) ON DELETE CASCADE
);

-- value insertion 

-- in Companies table

INSERT INTO Companies (CompanyID, CompanyName, Location)
VALUES
(1, 'Hexaware', 'Mumbai'),
(2, 'Google', 'California'),
(3, 'Microsoft', 'Washington'),
(4, 'Apple', 'California'),
(5, 'Amazon', 'Washington'),
(6, 'Facebook', 'California'),
(7, 'Tesla', 'California'),
(8, 'Wallmart', 'Arkansas'),
(9, 'Cocacola', 'Atlanta'),
(10, 'Intel', 'California 10'),
(11, 'TCS', 'Mumbai'),
(12, 'Infosys', 'Bangalore'),
(13, 'Cognizant', 'New Jersey'),
(14, 'IBM', 'New York'),
(15, 'Hero', 'New Delhi');

-- insertion in Jobs table

INSERT INTO Jobs (JobID, CompanyID, JobTitle, JobDescription, JobLocation, Salary, JobType, PostedDate)
VALUES
(1, 1, 'Software Engineer', 'Develop, test, and maintain software applications, debug code, and collaborate with team members to deliver high-quality software products.', 'Mumbai', 50000.00, 'full-time', '2024-05-01 08:00:00'),
(2, 2, 'Product Manager', 'Define product strategy, work with engineering and design teams, and oversee product development from ideation to launch.', 'California', 60000.00, 'part-time', '2024-05-02 10:00:00'),
(3, 3, 'Data Scientist', 'Analyze complex data sets, develop statistical models, and interpret data to solve business problems and drive decision-making.', 'Washington', 70000.00, 'contract', '2024-05-03 09:00:00'),
(4, 4, 'iOS Developer', 'Design and build advanced applications for the iOS platform, collaborate with cross-functional teams to define, design, and ship new features.', 'California', 80000.00, 'full-time', '2024-05-04 11:00:00'),
(5, 5, 'Solutions Architect', 'Design and implement scalable and cost-effective solutions, provide technical guidance to development teams, and ensure best practices.', 'Washington', 90000.00, 'part-time', '2024-05-05 08:30:00'),
(6, 6, 'UX Designer', 'Create user-centered designs by understanding user needs, conduct user research, and collaborate with product managers and engineers.', 'California', 100000.00, 'contract', '2024-05-06 07:45:00'),
(7, 7, 'Mechanical Engineer', 'Design, develop, and test mechanical systems and components for Tesla vehicles, ensuring performance, safety, and efficiency.', 'California', 110000.00, 'full-time', '2024-05-07 10:30:00'),
(8, 8, 'Supply Chain Analyst', 'Analyze supply chain data, identify trends and opportunities for improvement, and optimize inventory management and logistics.', 'Arkansas', 120000.00, 'part-time', '2024-05-08 12:15:00'),
(9, 9, 'Marketing Manager', 'Develop marketing strategies, oversee advertising and promotional campaigns, and analyze market trends to drive brand growth.', 'Atlanta', 130000.00, 'contract', '2024-05-09 09:45:00'),
(10, 10, 'Hardware Engineer', 'Design and develop computer hardware components, conduct tests and evaluations, and ensure products meet quality and performance standards.', 'California', 140000.00, 'full-time', '2024-05-10 08:20:00'),
(11, 11, 'Java Developer', 'Develop and maintain Java applications, collaborate with team members to deliver projects on time, and troubleshoot technical issues.', 'Mumbai', 150000.00, 'part-time', '2024-05-11 10:00:00'),
(12, 12, 'Business Analyst', 'Gather and analyze business requirements, translate them into technical solutions, and work closely with stakeholders to achieve project goals.', 'Bangalore', 160000.00, 'contract', '2024-05-12 11:30:00'),
(13, 13, 'QA Tester', 'Develop and execute test plans, identify and report defects, and ensure software products meet quality standards and user requirements.', 'New Jersey', 170000.00, 'full-time', '2024-05-13 08:45:00'),
(14, 14, 'Cloud Solutions Architect', 'Design and implement cloud solutions, architect cloud infrastructure, and provide technical leadership in cloud computing technologies.', 'New York', 180000.00, 'part-time', '2024-05-14 10:20:00'),
(15, 15, 'Electrical Engineer', 'Design and develop electrical systems for motorcycles and scooters, collaborate with cross-functional teams, and ensure product quality.', 'New Delhi', 190000.00, 'contract', '2024-05-15 07:30:00');

-- insertion in Applicants table

INSERT INTO Applicants (ApplicantID, FirstName, LastName, Email, Phone, Resume)
VALUES
(1, 'Pratham', 'Katariya', 'katariyapratham@gmail.com', '1234567890', 'https://github.com/pratham/repository/blob/branch/resume.pdf'),
(2, 'Anurag', 'Tank', 'tankanurag.com', '2345678901', 'https://github.com/anurag/repository/blob/branch/resume.pdf'),
(3, 'Siddarth', 'Jain', 'jainsiddarth@gmail.com', '3456789012', 'https://github.com/siddarth/repository/blob/branch/resume.pdf'),
(4, 'Shreyansh', 'Jain', 'jainshreyansh@gmail.com', '4567890123', 'https://github.com/shreyansh/repository/blob/branch/resume.pdf'),
(5, 'Himanshu', 'Soni', 'sonihimanshu@gmail.com', '5678901234', 'https://github.com/himanshu/repository/blob/branch/resume.pdf'),
(6, 'Rhythm', 'Soni', 'sonirhythm@gmail.com', '6789012345', 'https://github.com/rhythm/repository/blob/branch/resume.pdf'),
(7, 'Pranav', 'Soni', 'sonipranav@gmail.com', '7890123456', 'https://github.com/pranav/repository/blob/branch/resume.pdf'),
(8, 'Lekhraj', 'Tank', 'tanklekhraj@gmail.com', '8901234567', 'https://github.com/lekhraj/repository/blob/branch/resume.pdf'),
(9, 'Alokit', 'Sharma', 'sharmaalokit@gmail.com', '9012345678', 'https://github.com/alokit/repository/blob/branch/resume.pdf'),
(10, 'Mitram', 'Panday', 'pandeymitram@gmail.com', '0123456789', 'https://github.com/mitram/repository/blob/branch/resume.pdf'),
(11, 'Shlok', 'Katariya', 'katariyashlok@gmail.com', '9876543210', 'https://github.com/shlok/repository/blob/branch/resume.pdf'),
(12, 'Sujal', 'Agrawal', 'agrawalsujal@gmail.com', '8765432109', 'https://github.com/sujal/repository/blob/branch/resume.pdf'),
(13, 'Shivendra', 'Thakur', 'thakurshivendra@gmail.com', '7654321098', 'https://github.com/shivendra/repository/blob/branch/resume.pdf'),
(14, 'Rishabh', 'Patel', 'patelrishabh@gmail.com', '6543210987', 'https://github.com/rishabh/repository/blob/branch/resume.pdf'),
(15, 'Sarveshwar', 'Koshti', 'koshtisarveshwar@gmail.com', '5432109876', 'https://github.com/sarveshwar/repository/blob/branch/resume.pdf');

-- insertion in Application table

INSERT INTO Applications (ApplicationID, JobID, ApplicantID, ApplicationDate, CoverLetter)
VALUES
(1, 1, 1, '2024-05-01 08:00:00', 'https://drive.google.com/pratham/d/your_file_id/view'),
(2, 2, 2, '2024-05-02 10:00:00', 'https://drive.google.com/anurag/d/your_file_id/view'),
(3, 3, 3, '2024-05-03 09:00:00', 'https://drive.google.com/siddarth/d/your_file_id/view'),
(4, 4, 4, '2024-05-04 11:00:00', 'https://drive.google.com/shreyansh/d/your_file_id/view'),
(5, 5, 5, '2024-05-05 08:30:00', 'https://drive.google.com/himanshu/d/your_file_id/view'),
(6, 6, 6, '2024-05-06 07:45:00', 'https://drive.google.com/rhythm/d/your_file_id/view'),
(7, 7, 7, '2024-05-07 10:30:00', 'https://drive.google.com/pranav/d/your_file_id/view'),
(8, 8, 8, '2024-05-08 12:15:00', 'https://drive.google.com/lekhraj/d/your_file_id/view'),
(9, 9, 9, '2024-05-09 09:45:00', 'https://drive.google.com/alokit/d/your_file_id/view'),
(10, 10, 10, '2024-05-10 08:20:00', 'https://drive.google.com/mitram/d/your_file_id/view'),
(11, 11, 11, '2024-05-11 10:00:00', 'https://drive.google.com/shlok/d/your_file_id/view'),
(12, 12, 12, '2024-05-12 11:30:00', 'https://drive.google.com/sujal/d/your_file_id/view'),
(13, 13, 13, '2024-05-13 08:45:00', 'https://drive.google.com/shivendra/d/your_file_id/view'),
(14, 14, 14, '2024-05-14 10:20:00', 'https://drive.google.com/rishabh/d/your_file_id/view'),
(15, 15, 15, '2024-05-15 07:30:00', 'https://drive.google.com/sarveshwar/d/your_file_id/view');


-- Queries starts here 

-- 5th question solution

select j.JobTitle, count(a.ApplicationID) as Total_Applications
from Jobs as j
Left join Applications as a
on j.JobID = a.JobID
group by j.JobID;

-- 6th question solution

select j.JobTitle, c.CompanyName, c.Location, j.Salary
from Jobs as j
Inner Join Companies as c
on j.CompanyID = c.CompanyID
where j.Salary between 100000 and 150000;

-- 7th question solution

select j.JobTitle, c.CompanyName, a2.ApplicationDate
from Applicants as a1
inner join Applications as a2 on a1.ApplicantID = a2.ApplicantID
inner join Jobs as j on a2.JobID = j.JobID
inner Join Companies as c on j.CompanyID = c.CompanyId
where a1.ApplicantID = 3;

-- 8th questions solutions
select c.CompanyID, c.CompanyName, avg(j.Salary) as Average_Salary
from Companies as c
Inner Join Jobs as j
on c.CompanyID = j.CompanyID
group by CompanyID;

-- 9th question solution

select c.CompanyName, count(j.JobID) as Total_Jobs
from Companies as c
Inner Join Jobs as j
on c.CompanyID = j.CompanyID
group by c.CompanyID
order by Total_Jobs desc
Limit 1;

-- 10th question solution Note: Experience in not mention in the table schema as it is irrelavent

select a1.ApplicantID, a1.FirstName, a1.LastName, c.Location
from Applicants as a1
inner join Applications as a2 on a1.ApplicantID = a2.ApplicantID
inner join Jobs as j on a2.JobID = j.JobID
inner join Companies as c on j.CompanyID = c.CompanyID
where c.Location = 'California';



-- 11th question solution

select distinct JobTitle, Salary
from Jobs
where Salary between 60000 and 80000;

-- 12th question solution

select j.JobTitle
from Jobs as j 
left join Applications as a
on j.JobID = a.JobID
where j.JobID NOT IN(a.JobId);

-- 13th question solution

select a1.ApplicantID, a1.FirstName, a1.LastName, j.JobTitle, j.JobLocation, c.CompanyName, c.Location as CompanyLocation from Applicants as a1
inner join Applications as a2 on a1.ApplicantID = a2.ApplicantID
inner join Jobs as j on a2.JobID = j.JobID
inner join Companies as c on j.CompanyID = c.CompanyID;

-- 14th questions solutions

select c.CompanyName, count(j.JobID) as Total_Job_posted
from Companies as c
left join Jobs as j 
on c.CompanyID = j.CompanyID
group by c.CompanyID;

-- 15th question solution
select a1.ApplicantID, a1.FirstName, a1.LastName, j.JobTitle, j.JobLocation, c.CompanyName, c.Location as CompanyLocation from Applicants as a1
left join Applications as a2 on a1.ApplicantID = a2.ApplicantID
left join Jobs as j on a2.JobID = j.JobID
left join Companies as c on j.CompanyID = c.CompanyID;

-- 16th question solution
select c.CompanyName, j.Salary
from Companies as c
inner Join Jobs as j
on c.CompanyID = j.CompanyID
where j.Salary > (select avg(salary) from Jobs);

-- 17th question solution

alter table Applicants 
add column city varchar(40),
add column state varchar(40);

select ApplicantId, FirstName, LastName, concat(city, ', ', state) as Address
from Applicants;


-- 18th question solution

select JobTitle
from Jobs
where JobTitle like '%Developer%' OR JobTitle like '%Engineer%';

-- 19th question solution

select a1.ApplicantID, a1.FirstName, a1.LastName, j.JobTitle
from Applicants as a1
left join Applications as a2 on a1.ApplicantID = a2.ApplicantID
left join Jobs as j on a2.JobID = j.JObID
union
select a1.ApplicantID, a1.FirstName,a1.LastName, j.JobTitle
from Applicants as a1
right join Applications as a2 on a1.ApplicantID = a2.ApplicantID
right join Jobs as j on a2.JobID = j.JObID;


-- 20th question solution Note: Experience in not mention in the table schema as it is irrelavent

select a1.ApplicantID, a1.FirstName, a1.LastName, c.Location as CompanyLocation
from Applicants as a1
inner join Applications as a2 on a1.ApplicantID = a2.ApplicantID
inner join Jobs as j on a2.JobID = j.JobID
inner join Companies as c on j.CompanyID = c.CompanyID
where c.Location = 'Mumbai';


select * from companies;

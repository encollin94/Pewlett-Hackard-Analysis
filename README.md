# Pewlett-Hackard-Analysis
## August 5, 2022
#### **Purpose**
The purpose of this project was to create tables and perform an analysis on employees who will be retiring or employees who will be eligible for an employee mentorship program. Several tables were combined using an ERD to simplify key data for our analysis. All database creation and analysis were done in Postgre SQL. 
#### **Results**
Below are four main conclusions using the analysis:  
- The two main departments affected by retiring individuals are the senior engineer department and the senior staff department.[^1]  
- There are a total of 72,548 individuals ready for retirement.[^2]  
- There are 1,549 individuals who could enroll in the new mentorship program.[^3]
- The following departments are labeled as such:  
  - D001: Marketing   
  - D002: Finance  
  - D003: Human Resources  
  - D004: Production  
  - D005: Development  
  - D006: Quality Management  
  - D007: Sales  
  - D008: Research  
  - D009: Customer Service  
 - The total number of employees by department are as follows:
 ![This is an image](https://github.com/encollin94/Pewlett-Hackard-Analysis/blob/main/Employee_Database_challenge.sql/Supplemental%20Resources/Employee_Database_challenge.sql/Supplemental%20Resources/total_employee_by_dept.png)
#### **Analysis**
**1.How many roles will need to be filled as the "silver tsunami" begins to make an impact?**  
The number of roles to be filled are 72,548. Specifically there are:  
- 25,916 senior engineers
- 24,926 senior staff
- 9285 engineers
- 7636 staff
- 3603 technique leaders
- 1090 assistant engineers
- 2 managers  

that would need to all be potentially filled. From the internal employee pool, there are 259,145 employees currently working that may be eligible to move into these more senior roles. 

**2.Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?**  
The number of employees who are available to be a mentor are 1,549 individuals. This would assign around 167 employees to each mentor, which is completely unreasonable. The program should rethink about how to evaluate those who are ready for mentorship based on attributes such as experience and title. This would allow more employees to possibly become eligible and create a more tiered mentorship program, which would yield better results. For example, a senior engineer about to retire might not relate to or even understand the company dynamics for an associate engineer with 0 years experience. A better assignment would be for the senior engineer to mentor lead engineers, since they work with them more frequently and understand their jub duties and how to prepare them for the senior role. A staff engineer should mentor an associate negineer, as they understand the job environment for an associate engineer and can help them grow into a staff engineer.   








[^1]:![This is an image](https://github.com/encollin94/Pewlett-Hackard-Analysis/blob/main/Employee_Database_challenge.sql/Supplemental%20Resources/retiring_titles%20by%20department.png)
[^2]:![This is an image](https://github.com/encollin94/Pewlett-Hackard-Analysis/blob/main/Employee_Database_challenge.sql/Supplemental%20Resources/Count%20of%20retiring%20individuals.png)
[^3]:![This is an image](https://github.com/encollin94/Pewlett-Hackard-Analysis/blob/main/Employee_Database_challenge.sql/Supplemental%20Resources/Employee_Database_challenge.sql/Supplemental%20Resources/Count%20of%20Mentorship%20Eligibility.png)

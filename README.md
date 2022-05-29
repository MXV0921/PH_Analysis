# Pewlett-Hackard-Analysis

## Project Overview

In this project we learned the basics of SQL and utilized an application called PGAdmin to merge data from multiple spreadsheets and create, and export a spreadsheet that focused our merged and filtered data.  As data analysts we will often be given multiple files with pieces of data that are useful for a project we are working on.  SQL and PGAdmin gives us the ability to merge pieces of different files, and create new sheets of data sourced from multiple files. 

## Results

### Deliverable 1, Employees Retiring by Title

In three blocks of code we were able to create and filter tables to find exactly what we needed. In the first block we created a table 'challenge_table'.  

![challenge_code](https://github.com/MXV0921/PH_Analysis/blob/main/Data/Select_by_hire_date.png)

This resulted in extraneous data, we had names of employees who worked in multple positions, we filtered this data with a function called 'Distinct On' and filtered out employees who were no longer with the comppany.  This cleaned our data and we created another table called 'unique_titles' 

![unique_titles](https://github.com/MXV0921/PH_Analysis/blob/main/Data/Distinct_on.png)

The final step in the first deliverable was to use SQL code to sum the totals of each job title.

![title_count](https://github.com/MXV0921/PH_Analysis/blob/main/Data/retiring_by_title_count.png)
![title_chart](https://github.com/MXV0921/PH_Analysis/blob/main/Data/retiring_sheet.png)

* Most of the employees eligible for retiring are in Senior positions. Over 50,000 Senior Level positions will be opening up.
* Only 2 Managers will be eligible for retirment.  Why have older employees remained in Senior level positions as opposed to moving into management.

### Deliverable 2, Employees Eligible for Mentorship Program

In this part of the challenge we created a table that filtered us only employees who were born in 1965. This gives us 1549 employees born in 1965.

![mentor_code](https://github.com/MXV0921/PH_Analysis/blob/main/Data/mentor_code.png)

* The filtering we did in this deliverable needs more data before presenting findings.  Choosing a single year will not necessarily prove a successful program.  None of our data included performance ratings or job satisaction for these employees.  These would help prove who would be a more successful mentor.
* All of the departments except manager if we used 1965 a filter to choose mentor candidates.

I added the following filter to further explain the mentor availability by title.
![mentor_title](https://github.com/MXV0921/PH_Analysis/blob/main/Data/mentor_titles.png)

## Summary

### Filling the 'Silver Tsunami'
We have identified over 72,000 employees that will be retirement eligible in the upcoming years.  As stated earlier, many of these positions are in Senior Level positions.  It will be important to not only bring in new employees to the team, but we need to develop our current team to fill these leadership roles.  We can adjust the codes we have written and look at staffing across multiple age groups.  We targeted our search for the next three years but it is important to have a  longer term plan as well.  

Our code for targeting mentors is definitely a start but the criteria is very weak. It is also important to use our 'from_date' and 'to_date' to make sure that as we are targeting employees for mentorship programs who are experienced with our company.  We also previously discussed job performance and job satisfaction as an important criteria before choosing possible mentors.  

The easy answer for 'Are there enough qualified, retirement ready employees in the departments to mentor?" would be yes.  We have over 72,000 employees born between 1952-55, but in 1965 we only have 1549 employees born.  We need to expand our search criteria to see how large of a staffing problem we may truly have. 

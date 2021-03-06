# Pewlett-Hackard-Analysis
## Analysis Overview
The purpose of this analysis was to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program to help prepare for the "silver tsunami" as many current employees reach retirement age. 
## Results
There are four major talking points for this analysis:

- As seen in the image below of the retirement titles table, there are already several employees that have different titles as they have been promoted over the years just within the first ten rows. The duplicate employee numbers had to be removed to further the analysis but it shows that good employees were rewarded for their hard work through promotions.

![alt text](https://github.com/Bropell/Pewlett-Hackard-Analysis/blob/main/Resources/retirement_titles.png)

- There are two things of mention about the image below regarding retiring titles by count. The first thing to mention is that the amount of senior roles retiring compared to their non-senior counterparts is significantly more. For senior to non-senior engineer roles there is about two and a half times the amount retiring and for senior to non-senior staff, there is about three and a half times the amount of people retiring. 
- The second talking point is a build-off of the last two talking points in that with such a large portion of the people retiring being in a senior role, will the remaining employees have the capability to step up into those senior roles? Generally, the responsibilities and difficulties of a senior position is far and above that of a non-senior role. This is the very reason mentorship eligibility needed to be determined in the second part of the analysis, so this gap can be filled efficiently.

<p align="center">
    <img src="https://github.com/Bropell/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_titles.png">
</p>

- The last talking point is that at a quick glance of the first ten rows of the image below, regarding mentorship eligibility, that most employees that are eligible for mentorship are in senior roles. Building off previous points made, with a large number of senior employees leaving the company, they will need plenty of senior employees to mentor potential new senior employees. In the case of non-senior roles being filled, both senior and non senior employees within a department could provide mentorship. 

![alt text](https://github.com/Bropell/Pewlett-Hackard-Analysis/blob/main/Resources/mentorship_eligibility.png)

## Summary
- How many roles will need to be filled as the "silver tsunami" begins to make an impact?

<p align="center">
    <img src="https://github.com/Bropell/Pewlett-Hackard-Analysis/blob/main/Resources/total_employees_vs_retiring_employees_query.png">
</p>

As seen in the image above, additional queries were done to find the total number of employees (300,024) and the total number of retiring employees (72,458). The total number of employees retiring accounts for nearly 25% of the current total employees which is a significant amount of roles to be filled. This would be a good opportunity for Pewlett Hackard to refine training programs, provide better hiring incentives and/or combine role responsibilities so they may not have to fill every single position opening after retirement. Whatever the case, losing 25% of your employees within a single year would certainly impact the company.  

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? 

<p align="center">
  <img src="https://github.com/Bropell/Pewlett-Hackard-Analysis/blob/main/Resources/total_mentors_vs_mentors_by_department.png"/>
  <img src="https://github.com/Bropell/Pewlett-Hackard-Analysis/blob/main/Resources/mentors_by_department.png"/> 
</p>

As seen from the images above, additional queries were done to find the total mentors from the mentorship eligibility table generated earlier and the amount of mentors grouped by title. Assuming that Pewlett Hackard is interested in hiring and/or training the same amount of people to fill the positions of those that are leaving, the total number of mentors is barely above 2% of the total retiring employees. Ignoring assistant engineers, since a senior engineer should also know the responsibilities of that role, there is a decent spread of mentors across different titles with the exception of technique leaders, which are slightly lower. Given this spread and assuming the employees in the mentorship roles are excellent teachers and those trying to fill positions are good learners, they should be able to get the next generation of employees ready despite having such a low percentage of mentors. This scenario is essentially a college seminar class where there is only one professor and a several hundred students. There will always be some that learn better than others but for the most part there is a normal distribution of performance. 
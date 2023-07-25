# The Effect of Locality on Student's Perceptions of E-Cigarette Use

### Introduction
This research tackles the question of how a school’s location in an urban or rural area affects its students’ perception of e-cigarette use in Canada. 
To answer this question, the Canadian Student Tobacco, Alcohol and Drugs Survey 2018/2019 is used, which can be found [here](https://abacus.library.ubc.ca/dataset.xhtml?persistentId=hdl:11272.1/AB2/WEFOHY). 

By taking into account the student’s current smoking status, their sex at birth, and their grade, we use a linear regression to explore this dataset.

### Results

| Coefficients       | Estimate  | Std. Error | P-Value |
|--------------------|-----------|------------|---------|
| &Beta;<sub>1</sub> (Intercept) | 0.601474  | 0.018174   | <2e-16  |
| &Beta;<sub>2</sub> (School region is urban or rural) | -0.043475 | 0.004995   | <2e-16  |
| &Beta;<sub>3</sub> (Grade of student) | -0.028553 | 0.001331   | <2e-16  |
| &Beta;<sub>4</sub> (Whether student is male) | -0.085810 | 0.004192   | <2e-16  |
| &Beta;<sub>5</sub> (Whether student is a former smoker) | 0.056847  | 0.026865   | 0.0343  |
| &Beta;<sub>6</sub> (Whether student is a 'never' smoker) | 0.182868  | 0.011822   | <2e-16  |

With these results, we can see that in the regression, students attending school in rural areas tend to perceive occasional e-cigarette smoking as less risky
compared to those attending school in urban areas.

### Discussion and Extension

As e-cigarette use becomes more common, it is important to continually assess trends in the
population while introducing ways to increase awareness among students.
The findings in this report regarding age, sex and smoking habits playing a role in risk
perception line up with other reports. 
Since e-cigarette use is a result of
6multifaceted factors, a comprehensive study tackling the underlying reasons could help decrease
use among students
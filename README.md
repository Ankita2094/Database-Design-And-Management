# UNIVERSITY DATABASE

This project aims to collect data of all the universities in the United states, from it's location to admission rate and gain insights from it.

## MOTIVATION

Choosing a college is an overwhelming process. Independent reviews of colleges are no real way of knowing if the information found is accurate. This project was done to make choosing between thousands of institutions easier by providing simple to understand information on institutions’ incoming students and the graduating students’ outcomes.

## TABLE OF CONTENTS

* Project description
* Requirements
* Entity Relationship
* Process
* Analysis
* Conclusions
* License

## PROJECT DESCRIPTION

Over the course of this project a database is developed to store,manage and analyze data of US universities. The scenario is that if a student wants to pick a college when presented with multiple options they can query the database to unerstand the pros and cons of a university/college. Data about the universities from Data.gov, ranking by category from US news and reviews of a college from twitter are combined to produce this database. 

## REQUIREMENTS

Following are the Python (v3.8) Libraries used for the analysis:

* Numpy v1.16.2

* Pandas v0.24.2

* Requests v2.22.0
* Beautiful soup v4.9.0

* Mysql connector v8.0

* DateTime v4.3

* Tweepy v3.8.0
* MySQL 4.1+
* Tableau 2019.4+


## ENTITY RELATIONSHIP

A university is identified by its id and has information of its location,student size, total branches, Tuition, admission rates.

A *university* could have different types of *ownership*. Ownership has its type and university id.

*Higher degree* and *Predominant degree* contains the type of highest degree offered and the types of degrees available in a uniersity with it's university id.

*Top law school*, *Top engineering school*, *Top medical school*, *Top nursing school*, *Top business school* has the name of the school, ranking by category, rating score, and the university's  URL binded with University table by the university id.

Similarly, the *Top 100 Uni* contains the ranking of all universities combined.

Every *University's* required *SAT score* contains the SAT score average for Critical Reading, Math Writing and Cumulative.

![alt text](https://github.com/Ankita2094/DataDesignAndManagement/blob/master/ER_Diagram/ER_DiagramPNG.PNG)

## PROCESS

### DATA GATHERING


#### API 

APIs provide many efficiencies over using static data downloads (such as CSV files).
Firstly using the API provided by [U.S Department of Education](https://collegescorecard.ed.gov/) API to extract information of all the US universities in the US. The gathered data was then cleaned, audited and normalized. 

#### Webscraping

From [Top universities](https://www.topuniversities.com/where-to-study/north-america/united-states/ranked-top-100-us-universities) the top 100 univeristy ranking data was obtained. 

Also from [US news](https://www.usnews.com/) the top 100 universities by category was obtained. Now the ese information were also cleaned,audited and normalized to combine it to the data from API in MYSQL. 

The IPython Notebook index.ipynb for the data gathering can be downloaded from the repo.

Later, queries were made to understand the data and perform analysis.


## ANALYSIS
The analysis is structured. In that, a question and answer format is followed throughout.
First a question is posed; then using SQL Queries and Tableau informative Visualizations and relevant Summary Statistics are generated that try to answer the question. 

The IPython Notebook analysis.ipynb can be downloaded from the repo.
A Presentation on some of the major findings of the analysis can be viewed here.

## CONCLUSIONS

•	Only 18.7% of the colleges have listed their cumulative SAT scores displayed.

•	The highest number of Universities are in the states California and New York and in the cities New York and Chicago.

•	The highest and the most predominant awards are Certificates and then Undergradutes. It is rarely a graduate degree.

•	The country has more of Private- For-Profit Universities


## LICENSE

The contents of this repository are covered under the MIT License.

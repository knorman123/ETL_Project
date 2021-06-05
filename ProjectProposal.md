##Project Proposal

#Sources of data to extract from
- Wine reviews-https://www.kaggle.com/codebreaker619/alcohol-comsumption-around-the-world
- Alcohol consumption-https://www.kaggle.com/zynicide/wine-reviews
#Type of transformation needed for this data
* Wine Reviews json-
- Remove rows of missing data, look at country, type of wine/variety, points, price,
- Check for duplicates
- Joining both data sets using country
- Final production database will be load into PostgreSQL-relational database
- Two tables-one is all inclusive and another is top x
* Alcohol Consumption csv-
- Look at country and wine servings, remove other columns
- Check for duplicates
#Create new database and tables in PostgreSQL
- In Pandas extract the data, transform it and load back into dataframes
- Join two tables in PostgreSQL
- Query
- kaggle.comkaggle.com
- Alcohol Comsumption around the World
- Alcohol Consumption by countries in Average serving sizes per person
- kaggle.comkaggle.com
- Wine Reviews
- 130k wine reviews with variety, location, winery, price, and description

Select 
  Country.continent, Floor(Avg(City.population)) 
From 
  Country,City 
where 
  Country.code =City.countrycode 
Group by 
  Country.continent;

/*
Enter your query here.
*/
Select 
      Round(Long_w,4) 
from 
      Station 
where 
      Lat_n= (Select 
                    Min(Lat_n) 
             from 
                    Station 
             where 
                    Lat_n > 38.7780);

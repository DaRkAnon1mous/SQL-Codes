Select 
      Round(Long_w,4) 
from 
      Station 
where 
      Lat_n= (Select 
                    Max(Lat_n) 
             from 
                    Station 
             where 
                    Lat_n < 137.2345);

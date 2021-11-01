CREATE TABLE Final_Project_AHM (
  zpid INT NOT NULL,
  zipcode INT NOT NULL,
  latitude decimal NOT NULL,
  longitude decimal NOT NULL,
  latestPrice decimal not NULL,
  livingAreSQFt decimal not null,
  latest_saledate DATE not null
	);
	
select AHM.zpid, 
		AHM.zipcode, 
		AHM.latitude, 
		AHM.longitude, 
		AHM.latestPrice, 
		AHM.livingAreSQFt, 
		AHM.latest_saledate
from Final_Project_AHM as AHM
	

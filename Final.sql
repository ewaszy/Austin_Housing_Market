CREATE TABLE Austin_Housing_Market (
  zpid INT NOT NULL,
  zipcode INT NOT NULL,
  latitde DATE NOT NULL,
  longitude DATE NOT NULL,
  latestPrice INT not NULL,
  livingAreSQFt Int not null,
  latest_saledate DATE not null
	);
	
select AHM.zpid, 
		AHM.zipcode, 
		AHM.latitde, 
		AHM.longitude, 
		AHM.latestPrice, 
		AHM.livingAreSQFt, 
		AHM.latest_saledate
from Austin_Housing_Market as AHM
	
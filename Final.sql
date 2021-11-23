--Create Main Table
CREATE TABLE Austin_Housing_Market (
  	zpid INT NOT NULL,
  	streetAddress VARCHAR NOT NULL,
  	zipcode INT NOT NULL,
	yearBuilt INT NOT NULL,
  	latestPrice INT NOT NULL,
	latest_salemonth INT NOT NULL,
	latest_saleyear INT NOT NULL,
	latitude DECIMAL NOT NULL,
  	longitude DECIMAL NOT NULL,
  	livingAreSQFt Int NOT NULL,
	numofBathrooms DECIMAL NOT NULL,
	numofBedrooms DECIMAL NOT NULL,
	homeAge_years INT NOT NULL,
	price_sqft INT NOT NULL
	);
	
--Create Housing Features Table
	select ahm.streetAddress,
		ahm.yearBuilt,
		ahm.homeAge_years,
		ahm.livingAreSQFt,
		ahm.numofBathrooms,
		ahm.numofBedrooms
	into Features
	from Austin_Housing_Market as ahm
	;
	
--Create Housing Location Table 
	select ahm.zpid,
		ahm.zipcode,
		ahm.latitude,
		ahm.longitude
	into Location
	from Austin_Housing_Market as ahm
	;
	
--Create Time of sale Table with a right join
	select lo.zpid,
		ahm.latest_salemonth,
		ahm.latest_saleyear
	into saletime
	from Austin_Housing_Market as ahm
	right join location as Lo
	on ahm.zpid = Lo.zpid
	;
	
--Create Price Table with a right join
	select lo.zpid,
		ahm.streetAddress,
		ahm.latestPrice
	into Price
	from Austin_Housing_Market as ahm
	right join location as lo
	on ahm.zpid = lo.zpid
	;

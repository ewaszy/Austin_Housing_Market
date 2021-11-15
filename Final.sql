--Create Main Table
CREATE TABLE Final_Project_AHM (
  zpid INT NOT NULL,
  zipcode INT NOT NULL,
  latitude decimal NOT NULL,
  longitude decimal NOT NULL,
	yearBuilt int not null,
  latestPrice INT not NULL,
	latest_saleyear int not null,
  livingAreSQFt Int not null,
	numofBathrooms decimal not null,
	numofBedrooms decimal not null,
	homeAge_years int not null
	);
	
--Create Housing Table
	select fp.zpid,
		fp.yearBuilt,
		fp.homeAge_years,
		fp.livingAreSQFt,
		fp.numofBathrooms,
		fp.numofBedrooms
	into Housing
	from final_project_ahm as fp
	;

--Create Location Table by a right join
	select housing.zpid,
		fp.zipcode,
		fp.latitude,
		fp.longitude
	into Location
	from final_project_ahm as fp
	right join housing
	on fp.zip = housing.zpid
	;

--Create Price_year Table
	select fp.zpid,
		fp.latest_saleyear,
		fp.latestPrice
	into Price_year
	from final_project_ahm as fp
	;
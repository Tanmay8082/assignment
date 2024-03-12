/* this in from csv fill to sql data */
SELECT * FROM cars.`car dekho`;
/* 1) Read Cars data 
2) Total Cars: To get a count of total records
3) The manager asked the employee How many cars will be available in 2023? I
4) The manager asked the employee How many cars is available in 2020,2021,2022
5) Clint asked me to print the total of all cars by year. I don't see all the details.
6) Clint asked to car dealer agent How many diesel cars will there be in 2020?
7)Clint requested a car dealer agent How many petrol cars will there be in 2020?
8)The manager told the employee to give a print All the fuel cars (petrol, diesel, and CNG) come by all year.
9)Manager said there were more than 100 cars in a given year, which year had more than 100 cars?
10)The manager said to the employee All cars count details between 2015 and 2023; we need a complete list.
11)The manager said to the employee All cars details between 2015 to 2023 we need complete list  */ 
/* 1) Read Cars data */ 
select * from cars.`car dekho`;
/* 2) Total Cars: To get a count of total records */ #7927
select count(*)from cars.`car dekho`;
/* 3) The manager asked the employee How many cars will be available in 2023? */ # 6
select count(*) from cars.`car dekho` where year=2023 ;
/*4) The manager asked the employee How many cars is available in 2020,2021,2022*/
select count(*) from cars.`car dekho` where year between 2020 and 2022; #88
select count(*) from cars.`car dekho` where year in(2020,2021,2022) group by year;#7,7,74
/*5) Clint asked me to print the total of all cars by year. I don't see all the details.*/
select year , count(*) from cars.`car dekho` group by year; 
/*6) Clint asked to car dealer agent How many diesel cars will there be in 2020?*/
select count(*) from cars.`car dekho` where fuel=("diesel") and (year=2020 );#20
select * from cars.`car dekho` where fuel=("diesel") and (year=2020 );
/*7)Clint requested a car dealer agent How many petrol cars will there be in 2020?*/
select count(*) from cars.`car dekho` where fuel=("petrol") and (year=2020 );#51
select * from cars.`car dekho` where fuel=("petrol") and (year=2020 );
/*8)The manager told the employee to give a print All the fuel cars (petrol, diesel, and CNG) come by all year.*/
select count(*) from cars.`car dekho` where fuel="petrol" ;#3534
select count(*) from cars.`car dekho` where fuel="diesel" ;#4304
select count(*) from cars.`car dekho` where fuel="CNG" ;#53
/*9)Manager said there were more than 100 cars in a given year, which year had more than 100 cars?*/
select year,count(*) from cars.`car dekho`  group by year having count(*)>100  ;
select year,count(*) from cars.`car dekho`  group by year having count(*)<50  ;
/*10)The manager said to the employee All cars count details between 2015 and 2023; we need a complete list.*/
select count(*) from cars.`car dekho` where year between 2015 and 2023;#4124
/*11)The manager said to the employee All cars details between 2015 to 2023 we need complete list */
select * from cars.`car dekho` where year between 2015 and 2023;

create database hotelresarvation
use hotelresarvation

SELECT * FROM hotelresarvation.`hotel reservation dataset`;

-- what is the total number of reservation in the dataset?
select count(*) as totalreservation from `hotel reservation dataset`;

-- which meal plan is the most popular among guests? 

select count(*),type_of_meal_plan
from `hotel reservation dataset`
group by type_of_meal_plan limit 1

-- what is the avg price per room for reservations involving children?

select avg(avg_price_per_room) from `hotel reservation dataset`
where no_of_children>0;

-- How many reservations were made for the year 20XX (replace XX with the desired year)?

SELECT COUNT(*) AS count from `hotel reservation dataset`
WHERE YEAR(arrival_date) = '2018';

-- What is the most commonly booked room type?

select room_type_reserved,count(*) as count
from `hotel reservation dataset`
group by room_type_reserved
order by count DESC limit 1

-- How many reservations fall on a weekend (no_of_weekend_nights > 0)?

select count(*) from `hotel reservation dataset`
where no_of_weekend_nights > 0;

-- What is the highest and lowest lead time for reservations?

select max(lead_time),min(lead_time) from `hotel reservation dataset`

-- What is the most common market segment type for reservations?

select count(market_segment_type) as count from `hotel reservation dataset`
group by market_segment_type
order by count desc limit 1

-- How many reservations have a booking status of "Confirmed"?

select count(booking_status) as count from `hotel reservation dataset`
where booking_status='confirmed'

-- What is the total number of adults and children across all reservations?

select sum(no_of_adults) ,sum(no_of_children) from `hotel reservation dataset`


-- What is the average number of weekend nights for reservations involving children?

select avg( no_of_weekend_nights) from `hotel reservation dataset`
where no_of_children>0;

-- How many reservations were made in each month of the year?

select month (arrival_date) as month,count(*) as count from `hotel reservation dataset`
group by month(arrival_date);
   
--  What is the average number of nights (both weekend and weekday) spent by guests for each room type?
   
select avg(no_of_weekend_nights),avg(no_of_week_nights),room_type_reserved from `hotel reservation dataset`
group by room_type_reserved



-- For reservations involving children, what is the most common room type, and what is the average price for that room type?

select room_type_reserved,avg(avg_price_per_room),count(*) as count from `hotel reservation dataset`
where no_of_children>0
group by room_type_reserved
order by count desc;

-- Find the market segment type that generates the highest average price per room.

select market_segment_type,avg(avg_price_per_room) from `hotel reservation dataset`
group by market_segment_type



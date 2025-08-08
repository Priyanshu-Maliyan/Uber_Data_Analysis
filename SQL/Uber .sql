Create database Uber;

CREATE TABLE bookings (
    Date DATE,
    Time TIME,
    Booking_ID VARCHAR(50),
    Booking_Status VARCHAR(50),
    Customer_ID VARCHAR(50),
    Vehicle_Type VARCHAR(50),
    Pickup_Location VARCHAR(100),
    Drop_Location VARCHAR(100),
    V_TAT INTEGER,
    C_TAT INTEGER,
    Canceled_Rides_by_Customer VARCHAR(100),
    Canceled_Rides_by_Driver VARCHAR(100),
    Incomplete_Rides VARCHAR(10),
    Incomplete_Rides_Reason VARCHAR(100),
    Booking_Value INTEGER,
    Payment_Method VARCHAR(50),
    Ride_Distance INTEGER,
    Driver_Ratings FLOAT,
    Customer_Rating FLOAT,
    Vehicle_Images TEXT
);

copy bookings FROM 'C:/path/to/Bookings.csv' WITH (FORMAT CSV, HEADER TRUE, DELIMITER ',', NULL 'null');

-- Retrieve all Successful Bookings 
Create view Successful_Bookings As
SELECT * FROM bookings
where booking_status='Success';

-- Find the average ride distance for each vehicle type
Create View ride_distance_for_each_vehicle As
Select Vehicle_Type, AVG(Ride_Distance)
as avg_distance FROM bookings
GROUP by Vehicle_Type;

-- Get the total number of canceled rides by customer
Create View Canceled_rides_by_customer As
Select Count(*) From bookings
Where Booking_status='Canceled by Customer';

-- List of top 5 customers who booked the highest number of rides
Create view top_5_customers As
Select Customer_ID, Count(Booking_ID) as total_rides 
from bookings
group by Customer_ID
order by total_rides Desc Limit 5;

-- Get the no. of rides canceled by drivers due to personal and car-related issues:
Create View Rides_Canceled_by_drivers_P_C_Issues As
Select Count(*) From bookings
Where Canceled_Rides_by_Driver = 'Personal & Car related issue';

-- Find the maximum and minimum driver ratings for Prime Sedan bookings
Create View Max_Min_Driver_ratings As
Select Max (Driver_Ratings) as max_rating,
Min(Driver_Ratings) as min_rating
From bookings Where Vehicle_Type ='Prime Sedan';

-- Retrieve all rides where payments Was made using UPI
Create View UPI_Payment As
Select * From bookings
Where Payment_Method = 'UPI';

-- Find the average customer rating per vehicle type
create View average_customer_rating As
Select Vehicle_Type, AVG(Customer_Rating)
as avg_Cust_rating FROM bookings
GROUP by Vehicle_Type;

-- Calculate the total booking value of rides completed successfully
Create View Total_Sucessful_Ride_Value As
Select Sum(Booking_Value) as total_sucessful_ride_value
From bookings
Where Booking_Status = 'Success';
-- List all the incomplete rides along with the reason
Create View Incomplete_Rides_Reason As
Select Booking_ID, Incomplete_Rides_Reason
From bookings Where Incomplete_Rides = 'Yes';

-- 1.Retrieve all Successful Bookings 
SELECT * FROM Successful_Bookings;

-- 2.Find the average ride distance for each vehicle type
SELECT * FROM ride_distance_for_each_vehicle;

-- 3.Get the total number of canceled rides by customer
SELECT * FROM Canceled_rides_by_customer;

-- 4.List of top 5 customers who booked the highest number of rides
SELECT * FROM top_5_customers;

-- 5.Get the no. of rides canceled by drivers due to personal and car-related issues:
SELECT * FROM Rides_Canceled_by_drivers_P_C_Issues;

-- 6.Find the maximum and minimum driver ratings for Prime Sedan bookings
SELECT * FROM Max_Min_Driver_ratings;

-- 7.Retrieve all rides where payments Was made using UPI
SELECT * FROM UPI_Payment;

-- 8.Find the average customer rating per vehicle type
SELECT * FROM average_customer_rating;

-- 9.Calculate the total booking value of rides completed successfully
SELECT * FROM Total_Sucessful_Ride_Value;

-- 10.List all the incomplete rides along with the reason
SELECT * FROM Incomplete_Rides_Reason;














































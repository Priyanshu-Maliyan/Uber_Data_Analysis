# **🚗 Uber_Data_Analysis_**
Analyzes Uber ride data from Bookings.csv using SQL (pgAdmin 4) and Power BI. Includes queries for ride distances, cancellations, and top customers, with visualizations like bar and pie charts. Ideal for showcasing data analysis skills. 

## **📌 Overview**
The Uber Data Analysis Dashboard is designed to provide stakeholders with a comprehensive view of Uber’s operations through intuitive and insightful visualizations. It focuses on revenue trends, vehicle-type performance, customer behaviors, ride cancellations, and user ratings—all in one dynamic Power BI report.

## **🛠️ Tech Stack**
This dashboard was built using the following tools and technologies:

📊 Power BI Desktop – Main platform for interactive data visualization

🧹 Power Query – Used for ETL (Extract, Transform, Load) processes

🧠 DAX (Data Analysis Expressions) – Used for calculating KPIs and custom measures

📝 PostgreSQL – Backend database used for structured data storage and querying

📁 File Format – .pbix for report development, .png for dashboard previews, .sql for database views

## **📚 Data Source**
Source: Custom-generated dataset simulating Uber booking information

Structure:

20,000+ rows of booking data

Attributes: Booking status, customer ID, vehicle type, pickup/drop location, booking value, ratings, payment methods, ride distance, and more

Stored in a PostgreSQL database and imported into Power BI for visualization

Original file: Bookings.csv

SQL logic in: Uber.sql

## **🌟 Features / Highlights**
• Business Problem
Rideshare platforms like Uber generate vast volumes of data, but raw data isn’t useful without insights. Understanding customer behavior, ride performance, revenue trends, and cancellations is key for operational decision-making.

## **• Goal of the Dashboard**
To create an end-to-end interactive dashboard that:

Tracks and compares revenue by payment method

Identifies top customers and vehicle performance

Highlights ride distances, cancellation reasons, and rating patterns

Supports data-driven decision-making for product, marketing, and operations teams

## **• Walkthrough of Key Visuals**
Revenue by Payment Method (Bar Chart)
Visualizes the total revenue collected by different payment methods (Cash, UPI, Credit/Debit Card)

Ride Distance Distribution Per Day (Bar Chart)
Displays total ride distance covered each day in July 2025, showing ride demand over time

Top 5 Customers (Table)
Lists the customers who generated the most revenue

Sidebar Navigation (with Icons)
Includes sections for:

Overall Summary

Vehicle Type

Revenue

Cancellation

Ratings

Date Range Slicer
Allows dynamic filtering of all visuals between July 1–30, 2025

## **• Business Impact & Insights**
📈 Revenue Trends

Identify most-used payment methods to optimize transaction systems

👥 Customer Analysis

Spot loyal and high-value customers for targeted promotions

🚙 Operational Efficiency

Analyze ride distances and vehicle-type usage for performance evaluation

🚫 Cancellation Insights

Understand common cancellation causes to improve service reliability

⭐ User Ratings

Evaluate customer satisfaction by vehicle and ride experience

## **🖼️ Screenshots / Demo**

Alt Text: Uber Revenue Dashboard showing booking value by payment method, top customers, and daily ride distances
![Dashboard Preview](https://github.com/Priyanshu-Maliyan/Uber_Data_Analysis_/blob/main/Images/1_Overall.png)

🔗 Project Link
👉 GitHub – Uber Data Analysis(https://github.com/Priyanshu-Maliyan/Uber_Data_Analysis_/tree/main)

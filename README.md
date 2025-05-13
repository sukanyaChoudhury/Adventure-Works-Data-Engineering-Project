# Adventure-Works-Data-Engineering-Project 
## Azure End to End Data Engineering Pipeline

This project builds an End-to-End Azure Data Engineering Solution. A Pipeline performing Data Ingestion, ETL and Analytics all-in-one solution using Microsoft Azure Services and Power BI.

## Goal of the Project

The goal is to create an Azure solution which can take data stored in web and move it to the Cloud. It does so by building an ETL pipeline using Azure Data Factory, Azure Databricks and Azure Synapse Analytics.

This solution can be connected to a visualization and reporting dashboard using Microsoft Power BI.

<img width="545" alt="AWS_architecture" src="https://github.com/user-attachments/assets/a10ea12f-a558-4bf8-8fe9-86fc07487331" />

Data Migration to the Cloud is one of the most common scenarios the Data Engineers encounter when building solutions for a small-medium organization.
By working on this project, I was able to learn these skills:

* Data Ingestion
* ETL techniques using Azure Cloud Services
* Data Transformation
* Data Analytics and Dashboard Reporting

## Prerequisites:

1) Azure Subscription (Azure Data Lake Storage Gen2, Azure Data Factory, Azure Key Vault, Azure Databricks, Azure Synapse Analytics, Microsoft Entra ID)
2) Microsoft Power BI
3) Creating app registrations, Secret key, assigning role to a storage account application.
4) Download "AdventureWorksLT2017" Database csv files and upload them under the Data folder of this github repository.

The Database CSV files used for this project demonstration are:
AdventureWorksLT2017 Sales Database

https://github.com/sukanyaChoudhury/Adventure-Works-Data-Engineering-Project/tree/main/Data

## Implementation:

### Part 1: Data Ingestion

1. Data extraction from github into Data factory
2. Create a Copy Pipeline with lookup, copy and foreach activities which dynamically loads the data from the Data folder of this github repository into Azure Data Lake Storage Gen2 "bronze" directory using parameters.

Note that the Data is stored in "CSV format" in ADLS Gen2 storage folders.

<img width="688" alt="ADF_pipeline" src="https://github.com/user-attachments/assets/496288f3-41b6-417a-8bd8-1001beb70aa6" />

### Part 2: Data Transformation
Data is Loaded into Azure Databricks where python jupitor Notebooks can be created to do the required transformations. 
Cluster nodes, and compute are automatically managed by the Databricks service. 
The Data from bronze layer is cleaned and processed in the below steps and finally loaded into the silver layer in "Parquet format" using the **silver layer** script:
- Data access using App:
   <img width="822" alt="image" src="https://github.com/user-attachments/assets/f7718e86-43a9-436f-bcef-71d8b0013793" />
- Reading data from Bronze layer:
   <img width="821" alt="image" src="https://github.com/user-attachments/assets/ead5f129-fd95-40a2-9fdb-31ab7cde85e9" />
- Following Transformations are done on various tables :
  * Calendar table:
    * Added Month, MonthName, Year, DayName, Week, Day and DayofWeek columns to the Calendar table using it's date column
      <img width="775" alt="image" src="https://github.com/user-attachments/assets/6c9cdefb-d32c-46d2-9739-9526b98c6562" />
      
      <img width="830" alt="image" src="https://github.com/user-attachments/assets/ae62bf39-a707-4f81-8f99-38d392bebf81" />
    * After this, data is loaded into the silver layer as below:
      <img width="677" alt="image" src="https://github.com/user-attachments/assets/4d00496f-e5cb-4d17-bd1f-ff4f7810d9ec" />
  * Customers table:
    * Added a column "fullName" by concatenating "Prefix", "firstName" and "LastName" Columns
      <img width="779" alt="image" src="https://github.com/user-attachments/assets/faf9a999-bbb4-474c-972d-4759c0937011" />
    * Data is loaded into the silver layer as below:
      <img width="676" alt="image" src="https://github.com/user-attachments/assets/eb212dca-3eea-4e8d-ac81-bab742495e05" />



   

       




# 📊 analytics-data-warehouse

This project demonstrates the design and implementation of a modern analytics data warehouse using SQL Server and 🐳 Docker.  
It covers the full data engineering lifecycle, including data ingestion, ETL processes, dimensional data modeling, and analytics-ready data preparation to support business insights. The entire infrastructure is containerized for reproducible and scalable deployment.

---

## 🎯 Project Objectives

The objective of this project is to build a centralized data warehouse that consolidates sales data from multiple source systems, enabling reliable analytical reporting and informed decision-making.

Key goals:
- Integrate data from heterogeneous source systems
- Improve data quality and consistency
- Deliver business-ready datasets optimized for analytics

---

## 🏗️ Data Architecture

The project follows a **Bronze / Silver / Gold** layered architecture.

### 🥉 Bronze Layer – Raw Data
- Stores raw data as-is from source systems
- Data is ingested from CSV files into SQL Server
- No transformations are applied at this stage
- Acts as a reliable landing zone for traceability and reprocessing

### 🥈 Silver Layer – Cleansed Data
- Data cleansing and standardization
- Type casting and normalization
- Resolution of data quality issues (nulls, duplicates, invalid values)
- Prepares data for analytical modeling

### 🥇 Gold Layer – Analytics Data
- Business-ready datasets
- Dimensional modeling using a star schema
- Optimized for reporting and analytical queries
- Serves as the single source of truth for analytics

---

## 🛠️ Tools & Technologies

- **Datasets**: CSV files representing ERP and CRM source systems  
- **SQL Server Express**: Database engine for hosting the data warehouse  
- **SQL Server Management Studio (SSMS)**: Database management and query interface  
- **Docker & Docker Compose**: Containerized SQL Server deployment for reproducible environments
- **GitHub**: Version control and project documentation  

---

## 🐳 Docker Setup

The project is containerized using Docker for easy deployment and testing.

### Getting Started
```bash
docker-compose up
```

This command will:
1. Start the SQL Server container
2. Create the `DataWarehouse` database
3. Initialize the Bronze, Silver, and Gold schemas
4. Load data from CSV files into the Bronze layer
5. Execute ETL procedures to populate Silver and Gold layers
6. Run quality checks on the loaded data

The data warehouse is ready to test and query immediately after the containers start.

---

## 🔨 Building the Data Warehouse (Data Engineering)

### 📊 Data Sources
- Two independent source systems:
  - ERP system (sales and transactional data)
  - CRM system (customer-related data)
- Data is provided as CSV files and ingested into the Bronze layer

### ✅ Data Quality
- Data quality issues are handled in the Silver layer
- Includes cleansing, standardization, and validation steps

### 🔗 Data Integration
- ERP and CRM data are integrated into a unified analytical model
- The final schema is designed to be intuitive and efficient for analytical queries

### 📋 Scope & Assumptions
- The project focuses on the **latest snapshot of the data**
- Data historization and Slowly Changing Dimensions (SCD) are out of scope
- The emphasis is on clarity, correctness, and analytical usability

### 📚 Documentation
- Clear documentation of the data model
- Column definitions and table purposes are described
- Designed to be understandable by both business users and analytics teams

---

## 🎁 Outcome

The result is a clean, structured, and analytics-ready data warehouse that demonstrates:
- End-to-end ETL design
- Layered data architecture
- Dimensional data modeling best practices
- Practical SQL Server data engineering skills

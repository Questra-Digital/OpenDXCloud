# Odoo with Business Intelligence (Metabase+dbt+meltano)

This solution is an experimental solution that offers opinionated and integrated setup of Odoo with Meltano, DBT and Metabase for running enterprises with intelligence.

## 🧠 Who Benefits Most from This Stack?
### 1. 🏢 Growing Businesses Lacking Operational Visibility
> "Is your business starting to scale, but you don’t have sufficient visibility of your resources, stock levels, or operations to make data-driven decisions?"

This stack enables:
- Odoo: to manage sales, inventory, purchasing, and operations
- Meltano: to extract raw data from Odoo’s PostgreSQL
- dbt: to transform raw data into meaningful business metrics
- Metabase: to visualize KPIs for informed decision-making

### 2. 🧰 Companies with Fragmented Tools and No Unified Dashboard
> "Do you have data spread across tools (like spreadsheets, ERPs, legacy systems), but no single source of truth for insights?"

Meltano enables data consolidation, dbt standardizes your logic, and Metabase offers self-service BI.

### 3. 🛠 Operations-Heavy Businesses Seeking Better Inventory/Logistics Oversight
> "Do you manage stock or purchases but have no real-time insight into movement, costs, or fulfillment delays?"

Use Odoo’s stock, purchase, and product modules for operational control, and Metabase dashboards to track inventory turnover, supplier performance, and lead times.

### 4. 👩‍💻 Teams Without Full-Time Data Engineers
> "Do you want to improve reporting and automation without hiring a full data engineering team?"

- Meltano handles data ingestion with minimal code
- dbt enables analysts to build logic in SQL
- Metabase offers intuitive dashboards without BI vendor lock-in

### 5. 🌍 Organizations Looking for an Open Source, Scalable Data Stack
> "Do you want to avoid vendor lock-in while still achieving enterprise-grade analytics and operations management?"

All tools in this stack are open-source:
- Flexible for dev teams
- Safe for auditability
- Scalable with Docker and cloud-native options

## Environment Setup
It currently supports setup using docker compose. You can either setup each service independently or collectively.

### Pre-Requisites:
You need to install:
- Git
- Docker
- Docker Compose

### Independent setup
- Clone the repository using `git clone git@github.com:Questra-Digital/OpenDXCloud.git`

**For Odoo Setup**
- Change the director to Odoo using `cd ./OpenDXCloud/solutions/experimental/odoo-meltano-dbt-metabase/odoo`
- Rename `.env.example` file to `.env`. And update the values of all environment variables as per your needs
- Rename `.odoo_pg_pass.example` file to `.odoo_pg_pass`. And update the file text to contain password
- Run the project using `docker compose up -d`
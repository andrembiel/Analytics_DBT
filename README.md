# London Santander Bike Analysis with DBT

Welcome to the London Santander Bike Analysis project showcase! In this repository, I've demonstrated the power of DBT (Data Build Tool) to transform and combine data from various sources, creating insightful analyses. This project is a testament to my proficiency in analytics engineering and data transformation.

## Project Overview

This project showcases the utilization of DBT functionalities to transform and combine data from different sources, resulting in meaningful analyses and insights.

- **Project Goal:** The primary goal of this project is to create visualizations of London Santander bike rental schemas for analysis.
- **Data Sources:** I've sourced data from London Santander bike rental information, Santander bike station information (with coordinate data), and hourly London weather data stored in BigQuery.
- **Transformation and Orchestration:** The transformation and orchestration processes are applied using DBT, while visualization is built using Looker Studio.

## Project Highlights

The highlights of this project center around the effectiveness and usability of DBT:

- **Scalability:** DBT allows for scalable transformations, creating a reliable and organized data transformation process.
- **Features:** Leveraging DBT features such as macros, Jinja, testing, and automated documentation significantly enhances the power and utility of the tool.

## Technologies Used

Apart from DBT, the project also utilizes:

- **BigQuery:** Data sets are stored in a schema within BigQuery.
- **Looker Studio:** Dashboards and visualizations are displayed on Looker Studio.

## Project Structure

The repository's structure is divided into several key directories:

- `models/`: This directory contains all the DBT models, showcasing the transformation process.
  - `staging/`: Initial modular building blocks created from source data.
  - `intermediate/`: Logic layers stacked to prepare staging models for joining into desired entities.
  - `analytics/`: The final stage where modular components come together to provide a comprehensive view of important entities.

## Instructions for Exploration

To explore this project:

1. Clone the repository to your local machine: `git clone https://github.com/your-username/london-bike-analysis.git`
2. Setup and configure DBT according to the project structure.
3. Run the DBT transformations using: `dbt run`
4. Access the Looker Studio dashboard for a comprehensive analysis: [Looker Studio Dashboard](https://lookerstudio.google.com/reporting/0184bfa0-6ac0-4136-9843-bb980539370c)
5. For detailed documentation of each model and associated information, visit: [DBT Project Documentation](https://cloud.getdbt.com/accounts/189633/develop/3848704/docs/index.html#!/overview/my_new_project)

## Results and Impact

The project has resulted in a comprehensive dashboard on Looker Studio, offering valuable insights into London Santander bike rentals.

## Connect with Me

If you're interested in discussing this project, potential collaboration, or insights, feel free to connect with me on [LinkedIn](https://www.linkedin.com/in/your-profile) or send an email to your.email@example.com.

Thank you for exploring my DBT project!



# vgupe2024_team3

## Project: Pharmacy Management System

## Members:

1. Nguyễn Ngọc Trường - ID: 10421066 - Frontend Developer - Product Owner (Leader)
2. Mai Ngô Anh Khoa - ID: 10421027 - Database Administrator
3. Lê Hữu Trịnh Kha - ID: 10421023 - Database Administrator
4. Lê Thái Dương - ID: 10421012 - Backend Developer
5. Trần Cao Gia Bảo - ID: 10421005 - Frontend Developer
6. Trần Việt Trung - ID: 10421065 - Backend Developer
7. Văn Anh Thư - ID: 10421105 - Backend Developer

## UI/UX Design

https://www.figma.com/file/7NsaONmhjRLyUbNw3Q4BV5/Appotheke?type=design&node-id=0-1&mode=design&t=mcjEpDmPEe9CQq3U-0

## Report 

https://www.overleaf.com/read/vggykpmrdsmd#e35865

# Documentation

## Table of Contents

1. [Introduction](#introduction)
2. [Project Overview](#project-overview)
   - [Technology Stack](#technology-stack)
   - [Features](#features)
3. [Requirement Analysis](#requirement-analysis)
   - [Functional Requirements](#functional-requirements)
   - [Non-Functional Requirements](#non-functional-requirements)
4. [System Design](#system-design)
   - [Architecture Diagram](#architecture-diagram)
   - [Database Design](#database-design)
   - [Use Case Diagrams](#use-case-diagrams)
5. [Implementation](#implementation)
   - [Backend](#backend)
     - [Sign Up and Login](#sign-up-and-login)
     - [Role Division](#role-division)
     - [Data Interaction Functions](#data-interaction-functions)
       - [Add Medicine](#add-medicine)
       - [Generate Invoice](#generate-invoice)
       - [Add Supplier](#add-supplier)
       - [Chat Function](#chat-function)
   - [Frontend](#frontend)
     - [Dashboard](#dashboard)
     - [Pages](#pages)
       - [Add Medicine Page](#add-medicine-page)
       - [Generate Invoice Page](#generate-invoice-page)
       - [Add Supplier Page](#add-supplier-page)
       - [Chat Page](#chat-page)
6. [Usage Guide](#usage-guide)
   - [Navigating the Dashboard](#navigating-the-dashboard)
   - [Using the Add Medicine Function](#using-the-add-medicine-function)
   - [Generating an Invoice](#generating-an-invoice)
   - [Adding a Supplier](#adding-a-supplier)
   - [Using the Chat Function](#using-the-chat-function)
7. [Installation Guide](#installation-guide)
   - [Prerequisites](#prerequisites)
   - [Setting Up the Environment](#setting-up-the-environment)
   - [Running the Application](#running-the-application)
8. [Conclusion](#conclusion)
9. [References](#references)

## Introduction

The aim of this project is to develop an application for the effective management of a pharmaceutical store. It helps the pharmacist to maintain the records of the medicines/drugs and supplies sent in by the supplier. The admin who are handling the organization will be responsible to manage the record of the employee. Each employee will be given with a separate username and password. The users can communicate each other by using a built-in messaging system. Pharmacy management system deals with the maintenance of drugs and consumables in the pharmacy unit. It application can generate invoices, bills, receipts etc.

## Project Overview

### Technology Stack

- **Backend:** PHP
- **Frontend:** HTML, CSS, JavaScript, React
- **Database:** MySQL
- **Development Environment:** XAMPP

### Features

- Dashboard for navigation
- User authentication (Sign up and login)
- Role-based access control
- Data interaction functions: Add Medicine, Generate Invoice, Add Supplier, Chat

## Requirement Analysis

### Functional Requirements

* **Drug Inventory Management**

  * Add drug to inventory
  * Remove drug from inventory
  * Search drug
  * Check drug availability
  * Suggest alternative drugs
  * Search based on attribute (ingredient, pricing, attribute)
  * Calculate pricing
  * Print receipts / Generate invoice
* **User Roles and Capabilities**

  **- Pharmacist**

  * Add drug to order
  * Remove drug from order
  * Search if the drug is in stock
  * Search availability in other branches

  **- Admin / Manager**

  * Pharmacy settings
  * Track inventory
  * Set and edit price
  * Set and edit code
  * Set and edit stock quantity
  * Set and edit attributions
  * Credential / Authorization management
  * Add and remove pharmacists
  * Client/buyer database management
  * Track past purchases
  * Manage user credit (optional)
  * Track and manage pharmacists
  * Check records of pharmacists
  * Add supplier
* **System Functions**

  * Login and Sign up
  * Real-time synchronization
  * Reporting and analytics
  * Restore and backup system (optional)
  * Customer management system (optional)
* **Messaging System**

  * Send message to a user
  * Receive message
  * Send picture (optional)

### Non-Functional Requirements

* **Performance**
  * The system should handle real-time synchronization efficiently.
  * Reporting and analytics should process data promptly to provide timely insights.
* **Reliability**
  * The system should provide reliable backup and restore options (if implemented).
  * Messaging system should ensure reliable delivery and receipt of messages.
* **Security**
  * Secure login and sign-up processes.
  * Proper authorization mechanisms for pharmacists and admins.
  * Data encryption for sensitive information.
* **Usability**
  * User-friendly interface for pharmacists and admins.
  * Easy navigation through the dashboard and various functionalities.
* **Scalability**
  * The system should handle increasing amounts of data and users.
  * Efficiently manage additional branches and extended functionality as needed.
* **Maintainability**
  * The codebase should be well-documented and modular to facilitate easy updates and maintenance.
  * System should be designed to handle future enhancements with minimal disruption.
* **Compatibility**
  * The system should be compatible with various browsers and devices.
  * Ensure integration capabilities with existing pharmacy systems and databases.
* **Availability**
  * Ensure high availability with minimal downtime.
  * Provide robust support for real-time synchronization and data access.

## System Design

### Architecture Diagram

### Database Design

### Use Case Diagram

![Add Medicine]()

## Implementation

### Backend

#### Create Account

#### Login

#### Role Division

#### Data Interaction Functions

##### Add Medicine

##### Generate Invoice

##### Add Supplier

##### Chat Function

### Frontend

#### Dashboard

- **Important Note:** The layout of the dashboard is heavily shared as the main template of other pages. So as if stated otherwise, please assume the bellow desigin elements such as sidebar and http header are present in every other pages except for create account and login.

##### Dashboard

The dashboard of the pharmacy management system is designed to provide an intuitive and user-friendly interface for navigating through various features of the application. Below is a detailed description of the dashboard, based on the provided `index.php` file.

###### Structure

The dashboard consists of several key components:

1. **HTML Head Section**:

   - **Meta Tags**: Includes meta tags for character set and viewport settings.
   - **Title**: The title of the page is set to "Dashboard Design".
   - **CSS Links**: External CSS stylesheets are linked, including a custom `style.css` file and the Boxicons library for icons.
2. **Sidebar**:

   - **Logo and Brand Name**: Displays the logo and the brand name "APPOTHEKE".
   - **Menu Items**: The sidebar contains a list of menu items for navigation:
     - **Dashboard**: The main dashboard page.
     - **Notifications**: Page for viewing notifications.
     - **Create Account**: (Admin only) Page for creating new user accounts.
     - **Sale**: Page for managing sales.
     - **Suppliers**: (Admin only) Page for managing suppliers.
     - **Add Medicine**: (Admin only) Page for adding new medicines.
3. **Content Area**:

   - The main content area is where different pages and functionalities are displayed based on user interaction with the sidebar menu.

###### Description

- **Sidebar Navigation:** The sidebar provides easy access to various functionalities of the system. The visibility of some items is restricted based on the user role (Admin).
- **User Authentication:** The dashboard is protected and only accessible to authenticated users. If the user is not logged in, they are redirected to the login page.
- **Dynamic Content:** The main content area is designed to dynamically load content based on user actions.
  This dashboard structure ensures that users can efficiently navigate through the system and access necessary functionalities based on their roles.

##### Add Medicine Page

##### Generate Invoice Page

##### Add Supplier Page

##### Chat Page

## Usage Guide

### Navigating the Dashboard

### Using the Add Medicine Function

### Generating an Invoice

### Adding a Supplier

### Using the Chat Function

## Conclusion

Summarize the project and its outcomes.

## References

List any references or resources used.

# 3340 Project - Wheelspire

Wheelspire is an e-commerce platform for premium model cars. It allows users to browse products, place orders, and manage their accounts, while admins can view orders, manage products, and track sales.

## Features

- User registration and login
- User profiles can be edited by the user
- Product catalog categorized as different brands
- Shopping cart and checkout system
- Admin dashboard with order and user management
- Real-time sales and user statistics

## Languages & Technologies Used

- **PHP** (OOP)
- **MySQL** (Database)
- **HTML5 / CSS3** (Frontend structure and design)
- **JavaScript** (Interactivity and dynamic content)
  
## Installation and Setup

### 1. Import the Database

Download the SQL file `hilbersw_3340project_db.sql`. Import this file into your MySQL database.

Using phpMyAdmin:

1. Create a new database.
2. Navigate to the **Import** tab and select the `hilbersw_3340project_db.sql` file.

### 2. Configure Database Connection

Open `Classes/Dbh.php` and update these credentials:

```php
private $host = "localhost";
private $user = "your_username";
private $password = "your_password";
private $dbname = "your_database_name";
```
### 3. Update Base URL

Open `navbar.php` and find line 30 where the `<base href="/">` tag is inside the `<head>` section.

Change this to match your project folder. For example, if your project folder is named `myproject`, update it to:

```html
<base href="/myproject/">
```

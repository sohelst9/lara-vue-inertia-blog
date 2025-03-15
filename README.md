# Project Setup Guide

## Prerequisites
Make sure you have the following installed:
- PHP 8.1 or later
- Composer
- Node.js & npm
- MySQL
- Laravel 11

## Installation Steps

1. **Clone the Repository**
   ```sh
   git clone https://github.com/sohelst9/lara-vue-inertia-blog.git
   cd lara-vue-inertia-blog
   ```

2. **Install PHP Dependencies**
   ```sh
   composer install
   ```

3. **Install JavaScript Dependencies**
   ```sh
   npm install
   ```

4. **Set Up Environment File**
   ```sh
   cp .env.example .env
   ```
   Update database credentials in the `.env` file.

5. **Set Up Database**
   - The database file is located in the `DB` folder.
   - Import the database using:
     ```sh
     mysql -u your_username -p your_database < DB/database.sql
     ```

6. **Generate Application Key**
   ```sh
   php artisan key:generate
   ```

7. **Run Migrations & Seed Data (If Needed)**
   ```sh
   php artisan migrate --seed
   ```

8. **Run Vite (For Frontend Assets)**
   ```sh
   npm run dev
   ```

9. **Run The Development Server**
    ```sh
    php artisan serve
    ```

## Authentication Setup
- Sanctum authentication is used.
- Ensure API authentication middleware is correctly set up in `config/sanctum.php`.

## Additional Commands
- To run in production mode:
  ```sh
  npm run build
  ```
- To clear cache:
  ```sh
  php artisan cache:clear
  ```

## Contribution
If you wish to contribute, please follow best practices and submit a pull request.

## License
This project is open-source under the MIT License.



# shopping-app-
this include SQL and python code 
# Shopping Portal Database

This repository contains the SQL dump for the Shopping Portal database. The database schema and sample data are provided to facilitate understanding and usage.

## Prerequisites

To use this database, you'll need a MySQL server installed on your system.

## Installation

1. Clone or download this repository to your local machine.
2. Import the SQL dump file into your MySQL server using a tool like phpMyAdmin or the MySQL command-line client.
3. Once the database is imported, you can start querying and using the data.

## Database Structure

The Shopping Portal database consists of several tables:

- `ADDED_IN`: Represents the relationship between products and shopping lists.
- `CANCLE`: Stores the IDs of cancelled checkouts.
- `CHECK_OUT`: Contains information about completed checkouts, including order details and customer information.
- `CHOOSE`: Represents the products chosen by customers.
- `CUSTOMER`: Stores customer information.
- `LIST1`: Represents shopping lists.
- `ORDER1`: Stores order information.
- `PAYMENT`: Contains payment details for checkouts.
- `PRODUCT`: Stores product information, including category, price, and seller details.
- `SELLER`: Contains seller information.
- `USER1`: Stores user information.
- `WAREHOUSE`: Represents warehouses and their capacity.

## Usage

You can now use the Shopping Portal database to perform various queries and analyze the data. Refer to the table structures and relationships to understand the database schema and make use of the available data.


## License

This database is provided under the [MIT License](LICENSE).

Note: you can find the file in "Schema for shpping portal .sql" in this repository

----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------

# Shopping App

This repository contains a shopping app that allows users to add products, make orders, and perform various actions related to shopping. The app is built using Python and MySQL.

## Prerequisites

- Python
- MySQL

# Shopping App

This repository contains a shopping app that allows users to add products, make orders, and perform various actions related to shopping. The app is built using Python and MySQL.

## Prerequisites

- Python
- MySQL

## Usage
Connecting to the Database

 
import mysql.connector
mydatab = mysql.connector.connect(
    host="localhost",
    user="root",
    password="12345678",
    database='shopping_portal'
)
## Retrieving Seller and Customer Data
To retrieve data from the "SELLER" table:

mycursor.execute("SELECT * FROM SELLER")
a = mycursor.fetchall()
To retrieve data from the "CUSTOMER" table:
mycursor.execute("SELECT * FROM CUSTOMER")
b = mycursor.fetchall()

## Adding a Product
To add a product to the database, use the input_product function:

def input_product(email):
    # ...

Make sure to provide the email parameter, which specifies the seller's email. The function will prompt you to enter product details such as name, category, price, weight, and warehouse number. If you want to add multiple products, enter "yes" when prompted. To stop adding products, enter "no".

## Making an Order
To make an order, use the make_order function:
def make_order(cc):
    # ...
Provide the cc parameter, which represents the customer's email. The function will guide you through the process of adding products to the order. Enter the serial number of the product to add it to the order. To finish adding products, enter "end". The function will calculate the total cost and display the list of products with their prices. You will be prompted to proceed with the payment or cancel the order.

## Signing Up as a New User
If you are a new user, you can sign up as a customer or seller. Run the script and follow the prompts. Provide your personal information such as first name, last name, email, password, phone number, and age. Then choose whether you want to sign up as a customer or seller.

Note: The script assumes that the user's email is unique and checks if the email exists in the "SELLER" and "CUSTOMER" tables before proceeding.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvement, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License.


Note: you can find the file in "shopping app .ipynb" in this repository

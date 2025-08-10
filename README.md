# SeniorProjectPortfolio
GCU Senior Project Portfolio
## Project Overview
This project is a comprehensive business management system designed to handle employee, product, product category, supplier, customer, and user information. It was developed using Java 17 with the Spring Boot framework, utilizing Thymeleaf for the frontend, Maven for build management, and JPA with a MySQL database for data persistence. Initially, I considered using C# with WebForms; however, upon my professor's advice, I shifted to a web application approach to better suit the needs of a business environment. The project utilizes BCrypt to securely hash and encode user passwords, ensuring robust security for user authentication.

## Tools Needed
- Java 17
- Spring Boot 3.3
- Maven
- MySQL
- MAMP
- Postman

## JSON Example
```
{
  "productId": 1,
  "name": "Product Name",
  "description": "Product Description",
  "categoryId": 1,
  "quantity": 100,
  "reorderLevel": 10,
  "supplierId": 1,
  "purchasePrice": 99.99,
  "sellPrice": 129.99
}
```

Anticipated Workflow
![workflow](workflow.png)

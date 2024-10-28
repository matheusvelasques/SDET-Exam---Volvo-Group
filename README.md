# SDET Exam - Volvo-Group
Projeto de automação de testes para vaga na empresa Volvo

Front-end Test 
URL: https://www.saucedemo.com/ Test Scenario: 

1. Open the page. 
2. Login into the system. 
	a. User and Passwords are described on the login page. 
3. Add 1 item to the cart. 
4. At the cart page, check out the item. 
5. Finish the checkout process


![FluxogramaFrontEnd](https://github.com/user-attachments/assets/c2665b9b-455c-4a2f-a1ac-717a917184ed)


Results:

![image](https://github.com/user-attachments/assets/182e4e7c-63d6-4f31-a396-7574f341d906)

![image](https://github.com/user-attachments/assets/2cbbc566-c8ed-44a2-908b-5e38be132a2b)

 
Back-end Test 
URL: https://fakerestapi.azurewebsites.net/index.html This URL is the API documentation (Swagger). 
There you can find the end-point details and the address. 
Test Scenario: 

1. Make a GET call to the end point “/api/v1/activities” 
2. Assert the response code is 200. 
3. Assert the field “id” is not empty inside each JSON object.

Results:
 
![image](https://github.com/user-attachments/assets/c85284d2-8817-4295-9a43-6f6c0e129473)
 
![image](https://github.com/user-attachments/assets/7a46dd0e-9215-4309-8681-8118ea7f762c)


Observação:
Python version: 3.11.4 

Libraries FrontEnd:
- Library               Selenium2Library
- Resource              keywords.robot

Libraries: BackEnd:

- Library     Selenium2Library
- Library     RequestsLibrary
- Library     Collections
- Library     JSONLibrary

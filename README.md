# Internet Application Project - 2022

This project was meant to be my Internet Application Project in 2022 and never updated it since then. Therefore, please feel free to check it out!

## Overview
This project is a web application that includes:
- Login Page
- Account Registration Page
- Ordering Page
- Checkout Page
- Contact Us Page

The login page allows users to use a local account and order drinks with tea and coffee filters.

## Technologies Used
- ASP.NET Web Forms
- C#
- HTML/CSS
- JavaScript

## Project Structure
The project is organized into several folders and files:

- **Account**: Contains pages related to user account management, such as `Login.aspx`.
- **Scripts**: Contains JavaScript files, including `modernizr-2.8.3.js` for feature detection.
- **Styles**: Contains CSS files for styling the web pages.

## Key Features


### Login and Registration
- **Login Page**: Allows users to log in using their username and password. It includes a "Remember me" checkbox to keep users logged in across sessions.
- **Registration Page**: Enables new users to create an account by providing their details such as username, password, email, and phone number. It includes validation to ensure all required fields are filled out correctly.
- [Login.aspx.cs](https://github.com/FirdausHisham/CoffeeWebsite2022/blob/92b18f4cb7475749de627d5778f3ffcdad0c1c39/Project/Account/Login.aspx.cs)
- [Register.aspx.cs](https://github.com/FirdausHisham/CoffeeWebsite2022/blob/92b18f4cb7475749de627d5778f3ffcdad0c1c39/Project/Account/Register.aspx.cs)

### Ordering System
- **Ordering Page**: Users can browse and select various drinks, including tea and coffee. The page includes filters to help users find their preferred drinks easily.
- **Add to Cart**: Users can add selected drinks to their cart, view the cart contents, and update quantities or remove items as needed.
- [Order.aspx.cs](https://github.com/FirdausHisham/CoffeeWebsite2022/blob/92b18f4cb7475749de627d5778f3ffcdad0c1c39/Project/HYSSOnline/Order.aspx.cs)

### Checkout Process
- **Checkout Page**: Users can review their order, provide shipping details, and select a payment method. The page includes form validation to ensure all required information is provided.
- **Payment Integration**: The checkout process integrates with a payment gateway to process payments securely. Users can enter their card details and complete the purchase.
- [Cart.aspx.cs](https://github.com/FirdausHisham/CoffeeWebsite2022/blob/92b18f4cb7475749de627d5778f3ffcdad0c1c39/Project/HYSSOnline/Cart.aspx.cs)

### Contact Us
- **Contact Us Page**: Provides a form for users to send inquiries or feedback. The form includes fields for the user's name, email, subject, and message. It also includes validation to ensure all required fields are filled out.

## Key Files
### Account/Login.aspx
This file contains the markup for the login page. It includes:
- A form for users to enter their username and password.
- A "Remember me" checkbox.
- A button to submit the login form.
- A link to register for a new account if the user doesn't have one.
- A placeholder for error messages.

### Scripts/modernizr-2.8.3.js
This file is part of the Modernizr library, which is used to detect HTML5 and CSS3 features in the user's browser. It helps in providing a consistent experience across different browsers.

## How to Run
1. Open the project in Visual Studio 2022.
2. Build the project to restore the necessary packages and compile the code.
3. Run the project using the built-in IIS Express server.

## How to Use
1. Navigate to the login page.
2. Enter your username and password.
3. Click the "Log in" button to authenticate.
4. If you don't have an account, click the "Register" link to create a new account.

## Contributing
If you would like to contribute to this project, please follow these steps:
1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them with descriptive messages.
4. Push your changes to your fork.
5. Create a pull request to merge your changes into the main repository.

## License
This project is licensed under the MIT License. See the `LICENSE` file for more details.

## Contact
For any questions or feedback, please contact [Your Name] at [Your Email].

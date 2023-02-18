# Afiyet's-Food-Delivery-App
Food Delivery App with Flutter

Project description
With this project, it is aimed to design a food ordering application within the framework of the specified criteria, using ready-made web services. Basically, the project should consist of a home page where the dishes are displayed, a detail page with the food details and a basket page. I basically used Bloc Pattern, Listview Builder and Dio structures in my project.

The functions I use in my application can be listed as a home screen, main meal page, the page where the meals are listed, the meal detail page, adding the meals to the basket with the quantity, viewing the dishes in the basket, deleting the food from the basket, searching for food, finding a location and ordering screen. The application first starts with a landing page. When you click on the start navigation button here, you will be directed to the homepage.

We can examine the homepage in 3 main parts. The first part is the app bar, the second part is the body of the page, and the third part is the navigation bar. Unlike the Appbar, you are directed to the drawer page via an icon. From here, you can functionally return to the home page or return to the landing page with the "log out" button. In the body of the page, there is a food search button and scrollable categories. In the navigation bar, you can access the drawer page from the left, the food page where the dishes are listed, the home button, the cart and the profile page.

For the search process, all the dishes are entered via the webservice.
Posted by food name or letter. For example, when we send the letter "e", it sends us the objects with the letter e in it. With this search process, both data is read and data is sent. When you click on the cutlery icon on the bottom navigation bar, we see a list of all the dishes purchased over the webservice. Then we see the detail page of any dish on the list. At this point, while the process of adding to the basket is carried out, the total price according to the quantity has been added.

When we come to the cart page, the dishes we add are available here, according to their customs. Google maps library was used in the location process. After the address transaction is confirmed, you choose your payment option, add your note and confirm the cart.

Finally, you see a message showing that your order has been confirmed, and you can return to the homepage with the button below.

https://www.youtube.com/watch?v=kdHm6HoDa0E&t=44s

![afiyets poster](https://user-images.githubusercontent.com/62266472/214413718-2048e334-ebff-41b4-8745-498dec65b0dc.png)

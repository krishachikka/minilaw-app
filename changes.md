import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'homepage.dart'; // Assuming you have a homepage.dart file

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
initialRoute: '/login', // Set the initial route to the login page
routes: {
'/login': (context) => LoginScreen(), // Define the route for the login page
'/home': (context) => HomePage(), // Define the route for the home page
},
);
}
}

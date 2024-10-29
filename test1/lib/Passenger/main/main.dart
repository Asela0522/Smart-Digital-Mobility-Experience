import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test1/Passenger/screens/home.dart';
import 'package:test1/Passenger/screens/passwordReset.dart';
import 'package:test1/Passenger/screens/homeScreen1.dart';  // Import HomeScreen1
import 'package:test1/Passenger/screens/homeScreen2.dart'; // Import HomeScreen1
import 'package:test1/Passenger/screens/login.dart';  // Import loginScreen
import 'package:test1/Passenger/screens/searchBus.dart';
import 'package:test1/Passenger/screens/signUp.dart';  // Import loginScreen




// Import profile scree

void main() => runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) =>const  MyApp(), // Wrap your app
    ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Booking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',  // Set the initial screen (HomeScreen)
      routes: {
        '/': (context) => const WelcomeScreen1(),
        '/welcome': (context) =>const  WelcomeScreen2(),
         '/login': (context) =>const  LoginPage1(),
         '/password reset': (context) =>const   PasswordResetScreen(),
         '/sign up': (context) =>const   SignUp(),
        '/SearchBus':(context) =>const  SearchBus(),
        '/Login_Home_Screen':(context) =>const  PaymentScreen(),

      },
    );
  }
}

// Your void functions can go here

void handleDriverSelection(BuildContext context) {
  // Perform any logic related to driver selection
  // print("Driver selected");
  // Navigate to another screen if needed
  Navigator.pushNamed(context, '/booking');
}

void handlePassengerSelection(BuildContext context) {
  // Perform any logic related to passenger selection
  // print("Passenger selected");
  // Navigate to another screen if needed
  Navigator.pushNamed(context, '/profile');
}

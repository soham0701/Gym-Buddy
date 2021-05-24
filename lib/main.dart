import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymbuddy/pages/homepage.dart';
import 'screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GymBuddy',
      theme: ThemeData(
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LogIn(),
        'ForgotPassword': (context) => ForgotPassword(),
        'CreateNewAccount': (context) => CreateNewAccount(),
        'LOGIN': (context) => HomePage(),
        'Log Out': (context) => LogIn(),
      },
    );
  }
}

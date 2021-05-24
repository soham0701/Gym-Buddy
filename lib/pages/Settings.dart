import 'package:flutter/material.dart';
import 'package:gymbuddy/navigation/navigation_bloc.dart';

class Settings extends StatelessWidget with NavigationStates{
  @override
  Widget build(BuildContext context) {
    Scaffold(
      backgroundColor: Colors.white,
    );
    return Center(
      child: Text(
        "Settings",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
      
    );
  }
}
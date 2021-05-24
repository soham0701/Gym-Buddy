import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gymbuddy/navigation/navigation_bloc.dart';
import 'package:gymbuddy/pallete.dart';

class MyProfile extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    Scaffold(
      appBar: AppBar(
          elevation: 0.0,
          backgroundColor: kBlue,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          )),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 35,
                    letterSpacing: 1.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 2,
                  height: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 5,
                    ),
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('background/UserIcon.png')),
                  ))
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
    );
    return Center(
      child: Text(
        "MyProfile",
        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 28),
      ),
    );
  }
}

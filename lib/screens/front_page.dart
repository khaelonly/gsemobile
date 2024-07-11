// Path: lib/screens/front_page.dart

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';

class front_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/MetaIcon.png',
              height: 200.0,
            ),
            SizedBox(height: 30),
            Text(
              'GATEWAY STALLION',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF28254C),
              ),
            ),
            Text(
              'ENTERPRISE',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF28254C),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login_page');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF28254C),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
               Navigator.pushNamed(context, '/register_page_1');
              },
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 85, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                side: BorderSide(color: Color(0xFF28254C), width: 2),
              ),
              child: Text(
                'REGISTER',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF28254C),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

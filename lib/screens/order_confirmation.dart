// Path: lib/screens/order_confirmation.dart

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, must_be_immutable, depend_on_referenced_packages, sized_box_for_whitespace, library_private_types_in_public_api, prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';

class order_confirmation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Color(0xFF28254C)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Image.asset(
                    'assets/MetaIcon.png',
                    height: 40.0,
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 100.0,
              ),
              SizedBox(height: 24.0),
              Text(
                'YOUR ORDER HAS BEEN SUCCESSFULLY PLACED',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E7D32), // Adjusted for green color
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Kindly check your email for your order invoice.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF28254C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  minimumSize: Size(200, 48), // Adjust the width and height as needed
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/shop',
                    (route) => false,
                  );
                },
                child: Text(
                  'BACK TO HOME',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

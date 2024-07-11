// Path: lib/screens/feature_page_5.dart

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class feature_page_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/shop');
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'BUSINESS TO BUSINESS TRANSACTIONS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF28254C),
                      ),
                    ),
                    SizedBox(height: 30),
                    Image.asset(
                      'assets/feature_5.jpg',
                      height: 200.0,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "A business looking for materials? A distributor? A partner? Contact us now.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF28254C),
                      ),
                    ),
                    SizedBox(height: 50),
                    Center(
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/shop');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF28254C),
                              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                            child: Text(
                              'GET STARTED',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Path: lib/screens/feature_page_4.dart

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class feature_page_4 extends StatelessWidget {
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
                      'LIVE UPDATES OF PARCEL STATUS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF28254C),
                      ),
                    ),
                    SizedBox(height: 30),
                    Image.asset(
                      'assets/feature_4.jpg',
                      height: 200.0,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Stay up to date with your deliverables with the help of our administrators.",
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(4, (index) {
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: index == 3 ? Color(0xFF28254C) : Colors.grey,
                                  shape: BoxShape.circle,
                                ),
                              );
                            }),
                          ),
                          SizedBox(height: 30),
                          Align(
                          alignment: Alignment.centerRight,
                          child: 
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Container(
                              width: 56,
                              height: 56,
                              child: FloatingActionButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/feature_page_5');
                                },
                                backgroundColor: Color(0xFF28254C),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white,
                                ),
                              ),
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

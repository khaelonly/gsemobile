// Path: lib/screens/register_page_1.dart

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class register_page_1 extends StatelessWidget {

TextEditingController firstname = TextEditingController();
TextEditingController lastname = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 20.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Image.asset(
                'assets/MetaIcon.png',
                height: 100.0,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'SIGN UP',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFF28254C),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Text(
                    
                    'First Name',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Last Name',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 60),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 10,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 10,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 10,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.circle,
                          color: Colors.white,
                          size: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Align(
                    alignment: Alignment.centerRight,
                    child: FloatingActionButton(
                      onPressed: () {
                       Navigator.pushNamed(context, '/register_page_2');
                      },
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.blueGrey[900],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

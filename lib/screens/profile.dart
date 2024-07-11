// Path: lib/screens/feature_page_1.dart

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  bool isEditing = false;

  TextEditingController nameController = TextEditingController(text: "John Doe");
  TextEditingController emailController = TextEditingController(text: "johndoe@example.com");
  TextEditingController passwordController = TextEditingController(text: "********");
  TextEditingController contactNumberController = TextEditingController(text: "123-456-7890");
  TextEditingController cityController = TextEditingController(text: "City/Province");
  TextEditingController postalCodeController = TextEditingController(text: "123456");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF28254C),
                    ),
                  ),
                  Image.asset(
                    'assets/MetaIcon.png',
                    height: 40.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/profile.jpg'),
              ),
              SizedBox(height: 20),
              buildEditableTextField('Name', nameController, isEditing),
              buildEditableTextField('Email', emailController, isEditing),
              buildEditableTextField('Password', passwordController, isEditing),
              buildEditableTextField('Contact Number', contactNumberController, isEditing),
              buildEditableTextField('City/Province', cityController, isEditing),
              buildEditableTextField('Postal Code', postalCodeController, isEditing),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(isEditing ? Icons.check : Icons.edit),
        onPressed: () {
          setState(() {
            isEditing = !isEditing;
          });
        },
      ),
    );
  }

  Widget buildEditableTextField(String label, TextEditingController controller, bool isEditing) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: TextField(
        controller: controller,
        readOnly: !isEditing,
        decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(10.0),
        ),
      ),
    );
  }
}
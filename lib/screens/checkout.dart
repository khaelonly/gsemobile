// Path: lib/screens/checkout.dart

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, must_be_immutable, depend_on_referenced_packages, sized_box_for_whitespace, library_private_types_in_public_api, prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/shop_model.dart';

class checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartModel>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
              SizedBox(height: 16.0),
              Text(
                'CHECKOUT',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF28254C),
                ),
              ),
              SizedBox(height: 16.0),
              Table(
                columnWidths: {
                  0: FixedColumnWidth(150.0),
                  1: FixedColumnWidth(70.0),
                  2: FixedColumnWidth(50.0),
                },
                border: TableBorder.all(color: Colors.grey),
                children: [
                  TableRow(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Product', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Price', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Qty', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  for (var item in cart.items)
                    TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset(item.image, width: 50, height: 50),
                              SizedBox(width: 8.0),
                              Expanded(child: Text(item.name)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('${item.price}'),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('${item.quantity}'),
                        ),
                      ],
                    ),
                ],
              ),
              SizedBox(height: 25.0),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'TOTAL',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${cart.totalPrice}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '${cart.totalQuantity}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Divider(),
              SizedBox(height: 25.0),
              Text(
                'Personal Information',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF28254C),
                ),
              ),
              _buildTextField('First Name'),
              _buildTextField('Last Name'),
              _buildTextField('Phone'),
              _buildTextField('Email'),
              SizedBox(height: 25.0),
              Divider(),
              SizedBox(height: 25.0),
              Text(
                'Shipping Information',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF28254C),
                ),
              ),
              _buildTextField('Country'),
              _buildTextField('House Number and Street Name'),
              _buildTextField('Town / City'),
              _buildTextField('Province'),
              _buildTextField('Zip Code'),
              _buildTextField('Order Notes', maxLines: 3),
              SizedBox(height: 16.0),
              Text(
                'PAYMENT',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF28254C),
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 8.0),
              RadioListTile(
                title: Text('Cash On Delivery'),
                value: 'Cash On Delivery',
                groupValue: 'payment',
                onChanged: (value) {},
              ),
              RadioListTile(
                title: Text('Direct Bank Transfer'),
                value: 'Direct Bank Transfer',
                groupValue: 'payment',
                onChanged: (value) {},
              ),
              RadioListTile(
                title: Text('GCash'),
                value: 'GCash',
                groupValue: 'payment',
                onChanged: (value) {},
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF28254C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  minimumSize: Size(double.infinity, 48),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/order_confirmation');
                },
                child: Text(
                  'PLACE ORDER',
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

  Widget _buildTextField(String label, {int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}

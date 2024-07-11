// Path: lib/screens/shop.dart

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, must_be_immutable, depend_on_referenced_packages, sized_box_for_whitespace, library_private_types_in_public_api, duplicate_import, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:gsemobile/models/shop_model.dart';
import 'package:provider/provider.dart';
import '../models/shop_model.dart';

class shop extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<shop> {
  String _selectedCategory = 'Metal Products';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PopupMenuButton<String>(
                    icon: Icon(Icons.menu, color: Colors.black),
                    onSelected: (String result) {
                      switch (result) {
                        case 'Settings':
                          Navigator.pushNamed(context, '/settings');
                          break;
                        case 'Profile':
                          Navigator.pushNamed(context, '/profile');
                          break;
                      }
                    },
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                      const PopupMenuItem<String>(
                        value: 'Settings',
                        child: Text('Settings'),
                      ),
                      const PopupMenuItem<String>(
                        value: 'Profile',
                        child: Text('Profile'),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/MetaIcon.png',
                    height: 40.0,
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart, color: Color(0xFF28254C)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/CartScreen');
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Text(
                'OUR PRODUCTS',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF28254C),
                ),
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Container(
                      width: 80,
                      child: ListView(
                        children: [
                          _buildCategoryItem('Metal Products', 'metal.png'),
                          _buildCategoryItem('Motors & Reducers', 'motor.png'),
                          _buildCategoryItem('Oil & Air Filters', 'oilandfilter.png'),
                          _buildCategoryItem('Industrial Hoses', 'industrialhoses.png'),
                          _buildCategoryItem('O-Rings', 'oring.png'),
                          _buildCategoryItem('Hydraulic Parts', 'hydraulicparts.png'),
                          _buildCategoryItem('Filing Cabinets', 'filingcabinet.png'),
                          _buildCategoryItem('Lockers', 'locker.png'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      padding: const EdgeInsets.all(16.0),
                      children: _buildProductSection(context, _selectedCategory),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(String title, String imagePath) {
    String imageAssetPath = 'assets/icons/$imagePath';

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCategory = title;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Container(
          height: 80.0,
          decoration: BoxDecoration(
            color: _selectedCategory == title ? Color(0xFF28254C) : Colors.grey[200],
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imageAssetPath,
                    height: 24.0,
                    width: 24.0,
                  ),
                  SizedBox(height: 5),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: _selectedCategory == title ? Colors.white : Color(0xFF28254C),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }

  List<Widget> _buildProductSection(BuildContext context, String category) {
    switch (category) {
      case 'Metal Products':
        return _buildProductRows([
          _buildProductCard(context, 'Metal Product 1', 'Php 1000'),
          _buildProductCard(context, 'Metal Product 2', 'Php 1000'),
          _buildProductCard(context, 'Metal Product 3', 'Php 1000'),
          _buildProductCard(context, 'Metal Product 4', 'Php 1000'),
        ]);
      case 'Motors & Reducers':
        return _buildProductRows([
          _buildProductCard(context, 'Motor Product 1', 'Php 2000'),
          _buildProductCard(context, 'Motor Product 2', 'Php 2000'),
          _buildProductCard(context, 'Motor Product 3', 'Php 2000'),
          _buildProductCard(context, 'Motor Product 4', 'Php 2000'),
        ]);
      case 'Oil & Air Filters':
        return _buildProductRows([
          _buildProductCard(context, 'Oil & Air Filter 1', 'Php 1500'),
          _buildProductCard(context, 'Oil & Air Filter 2', 'Php 1500'),
          _buildProductCard(context, 'Oil & Air Filter 3', 'Php 1500'),
          _buildProductCard(context, 'Oil & Air Filter 4', 'Php 1500'),
        ]);
      case 'Industrial Hoses':
        return _buildProductRows([
          _buildProductCard(context, 'Industrial Hose 1', 'Php 1800'),
          _buildProductCard(context, 'Industrial Hose 2', 'Php 1800'),
          _buildProductCard(context, 'Industrial Hose 3', 'Php 1800'),
          _buildProductCard(context, 'Industrial Hose 4', 'Php 1800'),
        ]);
      case 'O-Rings':
        return _buildProductRows([
          _buildProductCard(context, 'O-Ring 1', 'Php 1200'),
          _buildProductCard(context, 'O-Ring 2', 'Php 1200'),
          _buildProductCard(context, 'O-Ring 3', 'Php 1200'),
          _buildProductCard(context, 'O-Ring 4', 'Php 1200'),
        ]);
      case 'Hydraulic Parts':
        return _buildProductRows([
          _buildProductCard(context, 'Hydraulic Part 1', 'Php 2500'),
          _buildProductCard(context, 'Hydraulic Part 2', 'Php 2500'),
          _buildProductCard(context, 'Hydraulic Part 3', 'Php 2500'),
          _buildProductCard(context, 'Hydraulic Part 4', 'Php 2500'),
        ]);
      case 'Filing Cabinets':
        return _buildProductRows([
          _buildProductCard(context, 'Filing Cabinet 1', 'Php 3000'),
          _buildProductCard(context, 'Filing Cabinet 2', 'Php 3000'),
          _buildProductCard(context, 'Filing Cabinet 3', 'Php 3000'),
          _buildProductCard(context, 'Filing Cabinet 4', 'Php 3000'),
        ]);
      case 'Lockers':
        return _buildProductRows([
          _buildProductCard(context, 'Locker 1', 'Php 2800'),
          _buildProductCard(context, 'Locker 2', 'Php 2800'),
          _buildProductCard(context, 'Locker 3', 'Php 2800'),
          _buildProductCard(context, 'Locker 4', 'Php 2800'),
        ]);
      default:
        return [];
    }
  }

  List<Widget> _buildProductRows(List<Widget> products) {
    List<Widget> rows = [];
    for (var i = 0; i < products.length; i += 2) {
      rows.add(Row(
        children: [
          Expanded(child: products[i]),
          SizedBox(width: 16.0),
          if (i + 1 < products.length) Expanded(child: products[i + 1]),
        ],
      ));
      rows.add(SizedBox(height: 16.0));
    }
    return rows;
  }

  Widget _buildProductCard(BuildContext context, String productName, String price) {
    CartModel shop_model = Provider.of<CartModel>(context, listen: false);

    return Container(
      width: (MediaQuery.of(context).size.width - 120) / 2,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/itemholder.png',
            height: 100.0,
          ),
          SizedBox(height: 10),
          Text(
            productName,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF28254C),
            ),
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF28254C),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
        onPressed: () {
          // CTA
          CartItem item = CartItem(productName, 'assets/itemholder.png', int.parse(price.replaceAll('Php ', '')), 1);
          shop_model.addItem(item);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF28254C),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
            minimumSize: Size(10, 30)
          ),
          child: Text(
            'ADD TO CART',
            style: TextStyle(color: Colors.white, fontSize: 9,),
          ),
        ),
        ],
      ),
    );
  }
}

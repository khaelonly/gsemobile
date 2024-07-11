// Path: lib/screens/checkout.dart

// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, camel_case_types, prefer_const_literals_to_create_immutables, must_be_immutable, depend_on_referenced_packages, sized_box_for_whitespace, library_private_types_in_public_api, prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/shop_model.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var cart = Provider.of<CartModel>(context); // Assuming you have a CartModel provider

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
                  Image.asset(
                    'assets/MetaIcon.png',
                    height: 40.0,
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'PRODUCTS IN CART',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF28254C),
                ),
              ),
              Divider(),
              Expanded(
                child: ListView.builder(
                  itemCount: cart.items.length,
                  itemBuilder: (context, index) {
                    return CartItemWidget(
                      item: cart.items[index],
                      onRemove: () {
                        cart.removeItem(cart.items[index]);
                      },
                      onQtyChanged: (newQty) {
                        cart.updateItemQuantity(cart.items[index], newQty);
                      },
                    );
                  },
                ),
              ),
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
              SizedBox(height: 16.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF28254C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  minimumSize: Size(500, 30),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/checkout');
                },
                child: Text(
                  'CHECKOUT',
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

class CartItemWidget extends StatelessWidget {
  final CartItem item;
  final VoidCallback onRemove;
  final ValueChanged<int> onQtyChanged;

  CartItemWidget({required this.item, required this.onRemove, required this.onQtyChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                item.image,
                width: 50,
                height: 50,
              ),
              SizedBox(width: 8.0),
              Text(item.name),
            ],
          ),
          Text('${item.price}'),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                onPressed: () {
                  if (item.quantity > 1) {
                    onQtyChanged(item.quantity - 1);
                  }
                },
              ),
              Text('${item.quantity}'),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  onQtyChanged(item.quantity + 1);
                },
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.close),
            onPressed: onRemove,
          ),
        ],
      ),
    );
  }
}
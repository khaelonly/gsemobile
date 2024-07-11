// Path: lib/main.dart

// ignore_for_file: unused_import, use_key_in_widget_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';  
import 'screens/front_page.dart';
import 'screens/login_page.dart';
import 'screens/register_page_1.dart';
import 'screens/register_page_2.dart';
import 'screens/register_page_3.dart';
import 'screens/register_page_4.dart';
import 'screens/register_page_5.dart';
import 'screens/feature_page_1.dart';
import 'screens/feature_page_2.dart';
import 'screens/feature_page_3.dart';
import 'screens/feature_page_4.dart';
import 'screens/feature_page_5.dart';
import 'screens/shop.dart';
import 'screens/CartScreen.dart';
import 'screens/checkout.dart';
import 'screens/order_confirmation.dart';
import 'screens/profile.dart';
import 'screens/settings.dart';
import 'models/shop_model.dart'

; 


void main() => runApp(GSEMobile());

class GSEMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartModel()),
      ],
      child: MaterialApp(
        title: 'Gateway Stallion Enterprise',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: front_page(),
        routes: {
          '/front_page': (context) => front_page(),
          '/login_page': (context) => login_page(),
          '/register_page_1': (context) => register_page_1(),
          '/register_page_2': (context) => register_page_2(),
          '/register_page_3': (context) => register_page_3(),
          '/register_page_4': (context) => register_page_4(),
          '/register_page_5': (context) => register_page_5(),
          '/feature_page_1': (context) => feature_page_1(),
          '/feature_page_2': (context) => feature_page_2(),
          '/feature_page_3': (context) => feature_page_3(),
          '/feature_page_4': (context) => feature_page_4(),
          '/feature_page_5': (context) => feature_page_5(),
          '/shop': (context) => shop(),
          '/CartScreen': (context) => CartScreen(),
          '/checkout': (context) => checkout(),
          '/order_confirmation': (context) => order_confirmation(),
          '/profile': (context) => profile(),
          '/settings': (context) => settings(),
          
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
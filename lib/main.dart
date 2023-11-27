import 'dart:js';

import 'package:ecommerce_flutter/modules/shop1.dart';
import 'package:ecommerce_flutter/pages/cart_page.dart';
import 'package:ecommerce_flutter/pages/help_page.dart';
import 'package:ecommerce_flutter/pages/intro_page.dart';
import 'package:ecommerce_flutter/pages/shop_page.dart';
import 'package:ecommerce_flutter/themes/light_mode_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop1(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      // This is the theme of your application.
      //
      // Try running your application with "flutter run". You'll see the
      // application has a blue toolbar. Then, without quitting the app, try
      // changing the primarySwatch below to Colors.green and then invoke
      // "hot reload" (press "r" in the console where you ran "flutter run",
      // or simply save your changes to "hot reload" in a Flutter IDE).
      // Notice that the counter didn't reset back to zero; the application
      // is not restarted.
      // primarySwatch: Colors.blue,
      // ),
      home: const HelpPage(),

      theme: LightMode,
      // routes: {
      //   '/help_page': (context) => const IntroPage(),
      //   'shop_page': (context) => const ShopPage(),
      //   'cart_page': (context) => const CartPage(),
      // },
    );
  }
}

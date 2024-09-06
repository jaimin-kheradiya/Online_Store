import 'package:flutter/material.dart';
import 'package:online_store/screens/product_list_screen.dart';
import 'package:online_store/screens/cart_screen.dart'; // Import CartScreen
import 'package:online_store/providers/cart_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MaterialApp(
        title: 'Online Store',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false, // Removes the debug banner
        home: ProductListScreen(),
        routes: {
          '/cart': (context) => CartScreen(), // Define the route for CartScreen
        },
      ),
    );
  }
}

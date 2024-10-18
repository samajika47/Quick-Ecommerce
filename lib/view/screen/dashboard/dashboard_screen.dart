import 'package:flutter/material.dart';
import 'package:quick_ecommerce/view/screen/dashboard/account_screen.dart';
import 'package:quick_ecommerce/view/screen/dashboard/cart_screen.dart';
import 'package:quick_ecommerce/view/screen/dashboard/home_screen.dart';
import 'package:quick_ecommerce/view/screen/dashboard/message_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;
  onBottomIcon(int index) {
    selectedIndex = index;
    setState(() {});
  }

  List<Widget> Widgets = [
    HomeScreen(),
    MessageScreen(),
    CartScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          onBottomIcon(value);
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
      ),
      body: Widgets.elementAt(selectedIndex),
    );
  }
}

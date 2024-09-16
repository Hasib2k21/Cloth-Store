import 'package:clot_store/presentation/ui/screens/notification/notification_page_screen.dart';
import 'package:clot_store/presentation/ui/screens/order_page_screen.dart';
import 'package:clot_store/presentation/ui/screens/setting_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../state_holders/bottom_navbar_controller.dart';
import 'home/home_page_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  final BottomNavbarController _navbarController =
      Get.find<BottomNavbarController>();

  final List<Widget> _screen = [
    const HomePageScreen(),
    const NotificationPageScreen(),
    const OrderPageScreen(),
    const SettingPageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomNavbarController>(builder: (_) {
      return Scaffold(
        body: _screen[_navbarController.selectedIndex],
        bottomNavigationBar: SizedBox(
          height: 65, // Set the desired height
          child: NavigationBar(
            backgroundColor: Colors.grey.shade100,
            // Set background color to white
            selectedIndex: _navbarController.selectedIndex,
            onDestinationSelected: _navbarController.changeIndex,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            // Hide the labels
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: ''),
              NavigationDestination(
                  icon: Icon(Icons.notifications_outlined), label: ''),
              NavigationDestination(
                  icon: Icon(Icons.shopping_cart_checkout), label: ''),
              NavigationDestination(
                  icon: Icon(Icons.person_outline), label: ''),
            ],
          ),
        ),
      );
    });
  }
}

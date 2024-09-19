import 'package:clot_store/presentation/ui/screens/cart/place_order.dart';
import 'package:clot_store/presentation/ui/widget/circular_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with Back button and title
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularIconButton(onPressed: () {
                    // Define action for back button
                  }),
                  const Text(
                    'Cart',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 50), // Spacer for alignment
                ],
              ),
              const SizedBox(height: 20),

              // Remove all button
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Define action for remove all
                  },
                  child: const Text('Remove All'),
                ),
              ),

              // Example Cart Item
              const CartItemCard(),
              const CartItemCard(),
              SizedBox(
                height: 60,
              ),
              const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Subtotal'), Text('\$200')],
                    ),Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Subtotal'), Text('\$200')],
                    ),Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Subtotal'), Text('\$200')],
                    ),Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Subtotal'), Text('\$200')],
                    ),
                  ],
                ),
              ),
              
              Container(
                padding: EdgeInsets.all(10),

                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Text('Enter Coupon Code'),
                      CircularIconButton(onPressed: (){})
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12,),
              ElevatedButton(onPressed: (){Get.to(()=>const PlaceOrder());}, child: Text('CheckOut'))

            ],
          ),
        ),
      ),
    );
  }
}

class CartItemCard extends StatelessWidget {
  const CartItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Product Image
            Image.asset(
              'assets/images/monitor.png',
              height: 80,
              width: 80,
              fit: BoxFit.fill,
            ),

            // Product Details
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Mens Harrington Jacket',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 5,
                      children: const [
                        Text('Size: M'),
                        Text('Color: Black'),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Price and Quantity Controls
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  '\$148',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        // Decrease quantity action
                      },
                      icon: const Icon(Icons.remove),
                    ),
                    IconButton(
                      onPressed: () {
                        // Increase quantity action
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

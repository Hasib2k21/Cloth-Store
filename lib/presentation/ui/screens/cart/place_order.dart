import 'package:clot_store/presentation/ui/widget/circular_icon_button.dart';
import 'package:flutter/material.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key});

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircularIconButton(onPressed: () {
                    // Define action for back button
                  }),
                  const Text(
                    'CheckOut',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 50), // Spacer for alignment
                ],
              ),
              const SizedBox(height: 20),
              _buildContainer('Shipping Address', 'Add Shipping Address'),
              const SizedBox(height: 8),
              _buildContainer('Payment Method', 'Add Payment Method'),
              SizedBox(
                height: 60,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Subtotal'), Text('\$200')],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Subtotal'), Text('\$200')],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Subtotal'), Text('\$200')],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Subtotal'), Text('\$200')],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('\$280'),
                        Text('Place Order'),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainer(String text, String add) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text),
                Text(add),
              ],
            ),
            CircularIconButton(onPressed: () {})
          ],
        ),
      ),
    );
  }
}

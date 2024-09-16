import 'package:flutter/material.dart';


class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
          ),
          Text(
            'Notification',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 25,
          ),
          const NotificationWidget(
            imageUrl:
                'https://th.bing.com/th?id=OIP.GYhqDbHQItAb9GJ88eYKwgHaF2&w=281&h=222&c=8&rs=1&qlt=90&r=0&o=6&pid=3.1&rm=2',
            message:
                'Gilbert, you placed an order. Check your order history for full details',
          ),
          const SizedBox(
            height: 12,
          ),
          const NotificationWidget(
            imageUrl:
                'https://th.bing.com/th?id=OIP.GYhqDbHQItAb9GJ88eYKwgHaF2&w=281&h=222&c=8&rs=1&qlt=90&r=0&o=6&pid=3.1&rm=2',
            message:
                'Gilbert, Thank you for shopping with us we have canceled order #24568.',
          ),
          const SizedBox(
            height: 12,
          ),
          const NotificationWidget(
            imageUrl:
                'https://th.bing.com/th?id=OIP.GYhqDbHQItAb9GJ88eYKwgHaF2&w=281&h=222&c=8&rs=1&qlt=90&r=0&o=6&pid=3.1&rm=2',
            message:
                'Gilbert, your Order #24568 has been confirmed check your order...',
          ),
        ],
      ),
    );
  }
}

class NotificationWidget extends StatelessWidget {
  final String imageUrl;
  final String message;

  const NotificationWidget({
    super.key,
    required this.imageUrl,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        height: 64,
        padding: const EdgeInsets.all(12),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: const Color(0xFFF4F4F4),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                message,
                style: const TextStyle(
                  color: Color(0xFF272727),
                  fontSize: 16,
                  fontFamily: 'Circular Std',
                  fontWeight: FontWeight.w400,
                  height: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

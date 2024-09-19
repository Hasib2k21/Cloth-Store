import 'package:clot_store/presentation/ui/screens/cart/checkout.dart';
import 'package:clot_store/presentation/ui/widget/circular_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/assets_path.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircularIconButton(onPressed: (){}),
            const SizedBox(height: 150,),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AssetsPath.orderImage, width: 60, height: 100),
                  const SizedBox(height: 18),
                  Text('Your Cart is Empty',
                      style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(
                    height: 18,
                  ),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(()=>const Checkout());
                      },
                      child: const Text('Explore Categories'),
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
}

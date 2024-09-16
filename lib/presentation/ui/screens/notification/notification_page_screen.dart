import 'package:clot_store/presentation/ui/utils/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'notification_page.dart';

class NotificationPageScreen extends StatefulWidget {
  const NotificationPageScreen({super.key});

  @override
  State<NotificationPageScreen> createState() => _NotificationPageScreenState();
}

class _NotificationPageScreenState extends State<NotificationPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Notification',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(fontWeight: FontWeight.bold)),
              const Spacer(),
              SvgPicture.asset(AssetsPath.notiImage, width: 60, height: 100),
              const SizedBox(height: 18),
              Text('No Notification yet',
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(
                height: 18,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {Get.to(()=>const NotificationPage());},
                  child: const Text('Explore Categories'),
                ),
              ),
              const Spacer(),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}

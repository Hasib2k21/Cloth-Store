import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../state_holders/bottom_navbar_controller.dart';
import '../widget/home/home_appbar.dart';
import '../widget/home/horizontal_category_product_list.dart';
import '../widget/home/horizontal_product_list_view.dart';
import '../widget/home/search_text_field.dart';
import '../widget/home/section_header.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 80),
          child: Column(
            children: [
              const HomeAppber(),
              const SizedBox(height: 18,),
              SearchTextField(textEditingController: TextEditingController(),),
              const SizedBox(height: 15,),
              _buildCategoryListView(),
              _buildSpecialProductsSection(),
              _buildPopularProductsSection()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularProductsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: 'New In',
          onTap: () {},
        ),
        const SizedBox(height: 280, child: HorizontalProductListView()),
      ],
    );
  }

  Widget _buildSpecialProductsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          title: 'Top Selling',
          onTap: () {},
        ),
        const SizedBox(height: 280, child: HorizontalProductListView()),
      ],
    );
  }

  Widget _buildCategoryListView() {
    return Column(
      children: [
        SectionHeader(
          title: 'Category',
          onTap: () {

          },
        ),
        const SizedBox(
          height: 120,
          child: HorizontalCategoryProductList(),
        ),
      ],
    );
  }
}







import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants.dart';
import '../controller/controller.dart';
import '../screens/detail_screen.dart';
import '../view/product_card.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});
  final ProductController c = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: kDefultPadding / 2),
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70),
                decoration: const BoxDecoration(
                    color: kBackgroundcolor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40))),
              ),
              ListView.builder(
                itemCount: c.listProduct.length,
                itemBuilder: (context, index) => ProductCard(
                  productsData: c.listProduct[index],
                  press: () {
                    Get.to(DetailsScreen(productsData: c.listProduct[index]));
                  },
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_4/modles/products.dart';

import '../constants.dart';
import '../wigets/home/detail/detail_Body.dart';
import 'package:get/get.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.productsData});
  final Products? productsData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          padding: const EdgeInsets.only(right: kDefultPadding),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onPressed: () => Get.back(),
        ),
        centerTitle: true,
        title: const Text(
          'رجوع',
          style: TextStyle(color: Colors.black),
        ),
      ), //back
      body: DetailsBody(productsData: productsData),
    );
  }
}

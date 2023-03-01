// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_4/modles/products.dart';
import 'package:get/get.dart';
import '../constants.dart';
import '../controller/controller.dart';
import '../screens/detail_screen.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    Key? key,
    required this.productsData,
    required this.press,
  }) : super(key: key);

  final Products productsData;
  final Function press;
  final ProductController controller = Get.find<ProductController>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: kDefultPadding, vertical: kDefultPadding / 2),
      height: 190,
      child: InkWell(
        onTap: press(),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 25,
                        color: Colors.black12)
                  ]),
            ),
            Positioned(
                top: 0.0,
                left: 0.0,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefultPadding),
                  height: 160.0,
                  width: 200.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      productsData.image!,
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
            Positioned(
                bottom: 0.0,
                right: 0.0,
                child: SizedBox(
                  height: 136.0,
                  width: size.width - 200,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefultPadding),
                          child: Text(
                            productsData.title!,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefultPadding),
                          child: Text(
                            productsData.suTitle!,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(kDefultPadding),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(22),
                                color: kSecendaryColor),
                            child: Text('السعر: ${productsData.price}'),
                          ),
                        )
                      ]),
                ))
          ],
        ),
      ),
    );
  }
}

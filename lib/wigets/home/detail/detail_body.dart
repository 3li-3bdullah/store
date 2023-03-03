import 'package:flutter/material.dart';
import 'package:flutter_application_4/modles/products.dart';
import 'package:flutter_application_4/wigets/home/detail/product_image.dart';

import '../../../constants.dart';
import 'color_dut.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, this.productsData});
  final Products? productsData;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: kDefultPadding * 1.5),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: productsData!.image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(kDefultPadding),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      ColorDot(
                        isSelect: true,
                        fillColor: kTextLightColor,
                      ),
                      ColorDot(
                        isSelect: false,
                        fillColor: Colors.blue,
                      ),
                      ColorDot(
                        isSelect: false,
                        fillColor: Colors.red,
                      )
                    ]),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefultPadding / 2),
                child: Text(
                  productsData!.title.toString(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              Text(
                'السعر :\$${productsData!.price}',
                style: const TextStyle(
                    fontSize: 28.0,
                    color: kSecendaryColor,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: kDefultPadding,
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: kDefultPadding / 2),
          padding: const EdgeInsets.symmetric(
              vertical: kDefultPadding / 2, horizontal: kDefultPadding * 1.5),
          child: Text(
            productsData!.discribtion.toString(),
            style: const TextStyle(color: Colors.white, fontSize: 19.0),
          ),
        )
      ],
    );
  }
}

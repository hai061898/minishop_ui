import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minishop/models/product_model.dart';
import 'package:minishop/utils/consants.dart';

import 'add.dart';
import 'colorandsize.dart';
import 'counter.dart';
import 'description.dart';
import 'image_title.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key? key,required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: Get.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: Get.height * 0.3),
                  padding: EdgeInsets.only(
                    top: Get.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                      Description(product: product),
                      SizedBox(height: kDefaultPaddin / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
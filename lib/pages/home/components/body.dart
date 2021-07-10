import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minishop/models/product_model.dart';
import 'package:minishop/pages/home/components/categories.dart';
import 'package:minishop/pages/home/components/item.dart';
import 'package:minishop/routes.dart/routes.dart';
import 'package:minishop/utils/consants.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Category(),
        Expanded(
          child: Padding(  
             padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
             child: GridView.builder(
               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 mainAxisSpacing: kDefaultPaddin,
                 crossAxisSpacing: kDefaultPaddin,
                 childAspectRatio: 0.75,
               ),
              itemCount: products.length,
               itemBuilder:(context,index)=>ItemCard(
                 product: products[index],
                 press: ()=>Get.toNamed(RoutesName.DETAIL),
               )),
          ),
        ),

      ],
    );
  }
}
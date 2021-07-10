import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minishop/pages/home/controller.dart';
import 'package:minishop/utils/consants.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    final HomeController controller = Get.put(HomeController());
    return GestureDetector(
      onTap: () {
        controller.changeIndex(index);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              controller.categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: controller.selectedIndex == index
                    ? kTextColor
                    : kTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 4), //top padding 5
              height: 2,
              width: 30,
              color: controller.selectedIndex == index
                  ? Colors.black
                  : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}

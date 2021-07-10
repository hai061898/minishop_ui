import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minishop/routes.dart/routes.dart';

import 'utils/consants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShopMini',
       theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: RoutesName.HOME,
      getPages: RoutesPage.routes,
    );
  }
}



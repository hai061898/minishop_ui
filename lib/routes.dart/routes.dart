import 'package:get/get.dart';
import 'package:minishop/pages/home/home_screen.dart';

class RoutesName {
  static final HOME = '/';
  static final DETAIL = '/detail';
}

class RoutesPage {
  static final routes = [
    GetPage(name: RoutesName.HOME, page: ()=>HomeScreen()),
    // GetPage(name: RoutesName.DETAIL, page: ()=>DetailScreen()),
  ];
}

import 'package:get/get.dart';
import 'package:minishop/models/product_model.dart';
import 'package:minishop/pages/detail/detail_screen.dart';
import 'package:minishop/pages/home/home_screen.dart';

class RoutesName {
  static final HOME = '/';
  static final DETAIL = '/detail';
}

class RoutesPage {
  late final Product product;
  static final routes = [
    GetPage(name: RoutesName.HOME, page: () => HomeScreen()),
    GetPage(
        name: RoutesName.DETAIL,
        page: () => DetailsScreen(
              product: ,
            )),
  ]; 
}

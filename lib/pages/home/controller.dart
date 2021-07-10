import 'package:get/get.dart';

class HomeController extends GetxController {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  int selectedIndex =0;

  
  changeIndex(int values) {
    selectedIndex = values;
   
  }
}

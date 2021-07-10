import 'package:get/get.dart';

class HomeController extends GetxController {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  var selectedIndex = 1.obs;

  
  changeIndex(int index) {
    selectedIndex.value=index;
   
  }
}

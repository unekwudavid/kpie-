import '../controller/homepagefour_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomepagefourScreen.
///
/// This class ensures that the HomepagefourController is created when the
/// HomepagefourScreen is first loaded.
class HomepagefourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomepagefourController());
  }
}

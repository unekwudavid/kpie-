import 'package:kpie_assessment/core/app_export.dart';
import 'package:kpie_assessment/presentation/homepagefour_screen/models/homepagefour_model.dart';

/// A controller class for the HomepagefourScreen.
///
/// This class manages the state of the HomepagefourScreen, including the
/// current homepagefourModelObj
class HomepagefourController extends GetxController {
  Rx<HomepagefourModel> homepagefourModelObj = HomepagefourModel().obs;
}

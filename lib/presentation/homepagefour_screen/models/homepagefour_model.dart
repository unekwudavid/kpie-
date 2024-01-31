import '../../../core/app_export.dart';
import 'grid_item_model.dart';

/// This class defines the variables used in the [homepagefour_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepagefourModel {
  Rx<List<GridItemModel>> gridItemList = Rx([
    GridItemModel(
        imageProperty: ImageConstant.imgIconOutlinedA.obs,
        textProperty: "Need a Property?".obs,
        textProperty1: "Own a Property & Pay with Ease".obs),
    GridItemModel(
        imageProperty: ImageConstant.imgBag.obs,
        textProperty: "Agents & Developers".obs,
        textProperty1: "Post & Sell Your Properties".obs),
    GridItemModel(
        imageProperty: ImageConstant.imgGroup.obs,
        textProperty: "Mortgage Financing".obs,
        textProperty1: "Access funds to power that ongoing project".obs),
    GridItemModel(
        imageProperty: ImageConstant.imgLock.obs,
        textProperty: "My Account Area".obs,
        textProperty1: "Take me to my Dashboard".obs)
  ]);
}

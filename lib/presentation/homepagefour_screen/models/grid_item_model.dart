import '../../../core/app_export.dart';

/// This class is used in the [grid_item_widget] screen.
class GridItemModel {
  GridItemModel({
    this.imageProperty,
    this.textProperty,
    this.textProperty1,
    this.id,
  }) {
    imageProperty = imageProperty ?? Rx(ImageConstant.imgIconOutlinedA);
    textProperty = textProperty ?? Rx("Need a Property?");
    textProperty1 = textProperty1 ?? Rx("Own a Property & Pay with Ease");
    id = id ?? Rx("");
  }

  Rx<String>? imageProperty;

  Rx<String>? textProperty;

  Rx<String>? textProperty1;

  Rx<String>? id;
}

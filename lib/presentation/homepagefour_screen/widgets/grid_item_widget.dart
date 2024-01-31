import '../controller/homepagefour_controller.dart';
import '../models/grid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kpie_assessment/core/app_export.dart';

// ignore: must_be_immutable
class GridItemWidget extends StatelessWidget {
  GridItemWidget(
    this.gridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GridItemModel gridItemModelObj;

  var controller = Get.find<HomepagefourController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.gradientBlueToIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder19,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: gridItemModelObj.imageProperty!.value,
              height: 48.adaptSize,
              width: 48.adaptSize,
            ),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: 69.h,
            child: Obx(
              () => Text(
                gridItemModelObj.textProperty!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          SizedBox(
            width: 133.h,
            child: Obx(
              () => Text(
                gridItemModelObj.textProperty1!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import '../homepagefour_screen/widgets/grid_item_widget.dart';
import 'controller/homepagefour_controller.dart';
import 'models/grid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:kpie_assessment/core/app_export.dart';
import 'package:kpie_assessment/widgets/app_bar/appbar_leading_image.dart';
import 'package:kpie_assessment/widgets/app_bar/appbar_title.dart';
import 'package:kpie_assessment/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class HomepagefourScreen extends GetWidget<HomepagefourController> {
  HomepagefourScreen({Key? key})
      : super(key: key,);

  final HomepagefourController controller = Get.put(HomepagefourController());
  @override
  Widget build(BuildContext context) {
    //final HomepagefourController controller = Get.put(HomepagefourController());
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle114,
                height: double.maxFinite,
                width: double.maxFinite,
                radius: BorderRadius.circular(
                  3.h,
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 14.v),
                  decoration: AppDecoration.fillBlackC.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderBL30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildAppBar(),
                      SizedBox(height: 43.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 215.h,
                          margin: EdgeInsets.only(right: 26.h),
                          child: Text(
                            "msg_buying_properties_made".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.right,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ),
                      Spacer(),
                      _buildTextButton(),
                      SizedBox(height: 29.v),
                      _buildGrid(),
                      SizedBox(height: 9.v),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 93.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgWhatsappImage20230801,
        margin: EdgeInsets.only(left: 23.h),
      ),
      title: AppbarTitle(
        text: "msg_hav_i_lah_home_finance".tr,
        margin: EdgeInsets.only(left: 3.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildTextButton() {
    return Padding(
      padding: EdgeInsets.only(
        left: 23.h,
        right: 18.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 48.v,
            width: 89.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 38.v,
                    width: 89.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        0.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "lbl_take_a_tour".tr,
                        style: CustomTextStyles.bodyMedium15,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsUp,
                        height: 9.v,
                        width: 8.h,
                        margin: EdgeInsets.only(
                          left: 4.h,
                          top: 5.v,
                          bottom: 5.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              bottom: 10.v,
            ),
            child: Text(
              "lbl_welcome_james".tr,
              style: CustomTextStyles.bodyMediumMontserrat,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGrid() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 161.v,
            crossAxisCount: 2,
            mainAxisSpacing: 17.h,
            crossAxisSpacing: 17.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount:
              controller.homepagefourModelObj.value.gridItemList.value.length,
          itemBuilder: (context, index) {
            GridItemModel model =
                controller.homepagefourModelObj.value.gridItemList.value[index];
            return GridItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}

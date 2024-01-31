import 'package:flutter/material.dart';
import 'package:kpie_assessment/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlackC => BoxDecoration(
        color: appTheme.black9004c,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueToIndigo => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.07, 0),
          end: Alignment(0.8, 1.24),
          colors: [
            appTheme.blue500,
            appTheme.indigo900,
          ],
        ),
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderBL30 => BorderRadius.vertical(
        bottom: Radius.circular(30.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder19 => BorderRadius.circular(
        19.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;

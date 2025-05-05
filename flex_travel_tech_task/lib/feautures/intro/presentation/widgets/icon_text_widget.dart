import 'package:flex_travel_tech_task/core/utils/app_typography.dart';
import 'package:flex_travel_tech_task/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconTextWidget extends StatelessWidget {
  const IconTextWidget({
    super.key,
    required this.icon,
    this.iconHeight,
    this.iconWidth,
    this.iconColor,
    this.spacing,
    required this.text,
    this.textStyle,
  });
  final String icon;

  final double? iconHeight;
  final double? iconWidth;
  final Color? iconColor;
  final double? spacing;
  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: spacing ?? 5.w,
      children: [
        SvgPicture.asset(
          icon,
          height: iconHeight ?? 24.h,
          width: iconWidth ?? 23.w,
          fit: BoxFit.scaleDown,
          colorFilter: ColorFilter.mode(
            iconColor ?? AppColors.background,
            BlendMode.srcIn,
          ),
        ),
        Text(
          text,
          style: textStyle ??
              AppTypography.w400s15Ubuntu.copyWith(
                color: iconColor ?? AppColors.background,
              ),
        ),
      ],
    );
  }
}

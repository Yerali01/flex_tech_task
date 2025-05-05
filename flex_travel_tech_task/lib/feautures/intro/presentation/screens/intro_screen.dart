import 'package:auto_route/auto_route.dart';
import 'package:flex_travel_tech_task/core/services/router/app_router.dart';
import 'package:flex_travel_tech_task/core/utils/app_typography.dart';
import 'package:flex_travel_tech_task/core/utils/colors.dart';
import 'package:flex_travel_tech_task/feautures/intro/domain/models/icon_text_model.dart';
import 'package:flex_travel_tech_task/feautures/intro/presentation/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

@RoutePage()
class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});

  final List<IconTextModel> iconTexts = [
    IconTextModel(
      icon: 'assets/icons/ic_earth.svg',
      iconHeight: 24.h,
      iconWidth: 23.w,
      spacing: 8.57.w,
      text: 'Одна карта для всех направлений',
    ),
    IconTextModel(
      icon: 'assets/icons/ic_check_outline.svg',
      iconHeight: 24.h,
      iconWidth: 23.w,
      spacing: 9.w,
      text: 'Оплата только за потраченное',
    ),
    IconTextModel(
      icon: 'assets/icons/ic_eternity.svg',
      iconHeight: 21.h,
      iconWidth: 26.w,
      spacing: 6.w,
      text: 'Без срока действия',
    ),
    IconTextModel(
      icon: 'assets/icons/ic_card.svg',
      iconHeight: 24.h,
      iconWidth: 27.w,
      spacing: 5.w,
      text: 'Пакеты от 1\$',
    ),
  ];
  final Duration duration = const Duration(milliseconds: 400);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: -270.w, end: 0),
            duration: Duration(seconds: 1),
            curve: Curves.bounceIn,
            builder: (context, value, child) {
              return Positioned(
                top: 150.h,
                right: value,
                child: Image.asset(
                  width: 270.w,
                  'assets/images/intro_one.png',
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: -270.w, end: 0),
            duration: Duration(seconds: 1),
            curve: Curves.bounceIn,
            builder: (context, value, child) {
              return Positioned(
                bottom: value,
                left: value,
                child: Image.asset(
                  width: 342.w,
                  'assets/images/intro_two.png',
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 65.22.h,
              bottom: 57.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    right: 25.w,
                    left: 38.5.w,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/ic_logo.svg',
                        height: 25.h,
                        width: 39.5.w,
                        fit: BoxFit.scaleDown,
                        colorFilter: ColorFilter.mode(
                          AppColors.white,
                          BlendMode.srcIn,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: AppColors.white,
                        radius: 17.5,
                        child: Image.asset(
                          'assets/images/avatar_border.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(37.78.h),
                Padding(
                  padding: EdgeInsets.only(
                    right: 53.w,
                    left: 35.w,
                  ),
                  child: Text(
                    'Одна eSim для всех поездок',
                    style: AppTypography.w500s28.copyWith(
                      color: AppColors.white,
                    ),
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Gap(34.h),
                ListView.separated(
                  padding: EdgeInsets.only(
                    left: 33.w,
                    right: 42.w,
                  ),
                  shrinkWrap: true,
                  itemCount: iconTexts.length,
                  separatorBuilder: (context, _) => Gap(14.h),
                  itemBuilder: (BuildContext context, int index) {
                    return IconTextWidget(
                      icon: iconTexts[index].icon,
                      iconColor: iconTexts[index].iconColor,
                      iconHeight: iconTexts[index].iconHeight,
                      iconWidth: iconTexts[index].iconWidth,
                      textStyle: iconTexts[index].textStyle,
                      spacing: iconTexts[index].spacing,
                      text: iconTexts[index].text,
                    );
                  },
                ),
                Gap(36.h),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 31.w,
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 12.h,
                      horizontal: 18.w,
                    ),
                    height: 44.h,
                    width: 232.w,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 9.w,
                      children: [
                        Text(
                          'Список стран и тарифы',
                          style: AppTypography.w500s15Ubuntu.copyWith(
                            color: AppColors.black333333,
                          ),
                          maxLines: 1,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SvgPicture.asset(
                          'assets/icons/ic_arrow_right.svg',
                          height: 22.h,
                          width: 13.w,
                          fit: BoxFit.scaleDown,
                          colorFilter: ColorFilter.mode(
                            AppColors.black,
                            BlendMode.srcIn,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Ваш баланс: 1\$',
                      style: AppTypography.w500s14.copyWith(
                        color: AppColors.background,
                      ),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: true,
                    ),
                  ],
                ),
                Gap(21.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.router.navigate(
                          HomeRoute(),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 29.w,
                        ),
                        height: 52.h,
                        width: 336.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(56.r),
                          border: Border.all(
                            color: AppColors.white.withOpacity(0.12),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.centerRight,
                            stops: [
                              0.1,
                              1,
                            ],
                            colors: [
                              AppColors.blue3761DF,
                              AppColors.blue25ABFF,
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Активировать карту',
                            style: AppTypography.w500s15Ubuntu.copyWith(
                              color: AppColors.white,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flex_travel_tech_task/core/utils/app_typography.dart';
import 'package:flex_travel_tech_task/core/utils/colors.dart';
import 'package:flex_travel_tech_task/feautures/home/presentation/widgets/alert_button_widget.dart';
import 'package:flex_travel_tech_task/feautures/home/presentation/widgets/circular_countdown_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitef1f1f1,
      appBar: AppBar(
        backgroundColor: AppColors.whitef1f1f1,
        automaticallyImplyLeading: false,
        centerTitle: true,
        toolbarHeight: 100.h,
        title: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 22.w,
          ).copyWith(
            top: 53.h,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Flex Travel SIM',
                style: AppTypography.w500s19Ubuntu.copyWith(
                  color: AppColors.blue155A6A,
                ),
              ),
              CircleAvatar(
                radius: 17.5,
                child: Image.asset(
                  'assets/images/avatar_borderless.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
      body: CircularCountdown(),
      bottomSheet: Container(
        height: 221.h,
        padding: EdgeInsets.only(
          bottom: 75.h,
          left: 20.w,
          right: 20.w,
        ),
        color: AppColors.whitef1f1f1,
        child: Column(
          spacing: 18.h,
          children: [
            AlertButtonWidget(),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 64.h,
                width: 354.w,
                decoration: BoxDecoration(
                  color: AppColors.blue388DA2,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Center(
                  child: Text(
                    'Add traffic (from 5\$ / 10GB)',
                    style: AppTypography.w400s16Ubuntu.copyWith(
                      color: AppColors.white,
                    ),
                    maxLines: 1,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

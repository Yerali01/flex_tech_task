import 'package:flex_travel_tech_task/core/utils/app_typography.dart';
import 'package:flex_travel_tech_task/core/utils/colors.dart';
import 'package:flex_travel_tech_task/core/utils/formatters.dart';
import 'package:flex_travel_tech_task/feautures/home/presentation/home_bloc/home_bloc.dart';
import 'package:flex_travel_tech_task/feautures/home/presentation/widgets/painters/arc_painter_widget.dart';
import 'package:flex_travel_tech_task/feautures/home/presentation/widgets/painters/circle_painter_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class CircularCountdown extends StatefulWidget {
  const CircularCountdown({
    super.key,
  });

  @override
  State<CircularCountdown> createState() => _CircularCountdownState();
}

class _CircularCountdownState extends State<CircularCountdown>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _progressAnimation;
  late double _previousProgress = 0;

  Color bgColor = AppColors.blue4CADC4;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        double currentProgress =
            state.totalGB > 0 ? state.usedGB / state.totalGB : 0.0;

        if (_previousProgress != currentProgress) {
          _progressAnimation = Tween<double>(
            begin: _previousProgress,
            end: currentProgress,
          ).animate(
            CurvedAnimation(
              parent: _animationController,
              curve: Curves.linear,
            ),
          );

          _animationController.reset();
          _animationController.forward();

          _previousProgress = currentProgress;
        }

        Color arcColor = state.totalGB == state.usedGB
            ? AppColors.redReject
            : AppColors.blue33899E;

        Color gbTextColor = state.totalGB == state.usedGB
            ? AppColors.redReject
            : AppColors.blue155A6A;

        return Container(
          margin: EdgeInsets.only(
            top: 91.h,
            bottom: 98.h,
            left: 23.w,
            right: 31.w,
          ),
          padding: EdgeInsets.zero,
          width: 340.w,
          height: 331.h,
          decoration: BoxDecoration(
            color: AppColors.whitef1f1f1,
            borderRadius: BorderRadius.circular(170.r),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 8.85.w),
                blurRadius: 20.22.r,
                spreadRadius: 0,
                color: AppColors.black.withOpacity(0.1),
              ),
              BoxShadow(
                offset: Offset(0, 37.92.w),
                blurRadius: 37.92.r,
                spreadRadius: 0,
                color: AppColors.black.withOpacity(0.09),
              ),
            ],
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(
                size: Size(340.w, 340.h),
                painter: CirclePainter(
                  color: bgColor,
                  strokeWidth: 25.6.w,
                ),
              ),
              AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) => CustomPaint(
                  size: Size(340.w, 340.h),
                  painter: ArcPainter(
                    color: arcColor,
                    progress: _progressAnimation.value,
                    strokeWidth: 25.6.w,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/ic_logo.svg',
                    height: 30.38.h,
                    width: 47.w,
                    fit: BoxFit.scaleDown,
                    colorFilter: ColorFilter.mode(
                      AppColors.blue155A6A,
                      BlendMode.srcIn,
                    ),
                  ),
                  Gap(15.71.h),
                  Text(
                    'YOUR TRAFFIC',
                    style: AppTypography.w500s13Ubuntu.copyWith(
                      color: AppColors.blue155A6A,
                    ),
                  ),
                  Gap(2.26.h),
                  TweenAnimationBuilder<double>(
                    tween: Tween<double>(
                      begin: _previousProgress * state.totalGB,
                      end: state.usedGB,
                    ),
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    builder: (context, animatedValue, _) {
                      return Text(
                        '${StringFormatter().formatNumber(animatedValue)} GB',
                        style: AppTypography.w500s59Ubuntu.copyWith(
                          color: gbTextColor,
                        ),
                      );
                    },
                  ),
                  Gap(3.24.h),
                  Text(
                    'of ${StringFormatter().formatNumber(state.totalGB)} GB used',
                    style: AppTypography.w400s17Ubuntu.copyWith(
                      color: gbTextColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

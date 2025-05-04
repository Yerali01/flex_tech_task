import 'package:flex_travel_tech_task/core/utils/app_typography.dart';
import 'package:flex_travel_tech_task/core/utils/colors.dart';
import 'package:flex_travel_tech_task/feautures/home/presentation/home_bloc/home_bloc.dart';
import 'package:flex_travel_tech_task/feautures/home/presentation/widgets/switch_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlertButtonWidget extends StatelessWidget {
  const AlertButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (BuildContext context, HomeState state) {
        bool isExpired = state.totalGB == state.usedGB;
        return isExpired
            ? GestureDetector(
                onTap: () {
                  context.read<HomeBloc>().add(
                        ChangeUsedGBEvent(usedGB: 3.5),
                      );
                },
                child: Container(
                  height: 64.h,
                  width: 354.w,
                  decoration: BoxDecoration(
                    color: AppColors.transparent,
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(
                      color: AppColors.redReject,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Traffic has ended',
                      style: AppTypography.w400s16Ubuntu.copyWith(
                        color: AppColors.redReject,
                      ),
                      maxLines: 1,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              )
            : GestureDetector(
                onTap: () {
                  context.read<HomeBloc>().add(
                        ChangeUsedGBEvent(usedGB: 10),
                      );
                },
                child: Container(
                  height: 64.h,
                  width: 354.w,
                  padding: EdgeInsets.symmetric(
                    horizontal: 13.w,
                    vertical: 15.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.transparent,
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(
                      color: AppColors.blueStrokes,
                    ),
                  ),
                  child: Row(
                    spacing: 34.w,
                    children: [
                      Text(
                        'Alert when 1h from expiration',
                        style: AppTypography.w400s16Ubuntu.copyWith(
                          color: AppColors.blue388DA2,
                        ),
                        maxLines: 1,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SwitchButtonWidget(
                        onChanged: (bool isOpen) {},
                        initialValue: true,
                        activeColor: AppColors.blue46A7BF,
                        width: 65.w,
                        height: 33.h,
                      ),
                    ],
                  ),
                ),
              );
      },
    );
  }
}

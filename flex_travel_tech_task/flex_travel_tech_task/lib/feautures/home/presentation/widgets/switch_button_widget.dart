import 'package:flex_travel_tech_task/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SwitchButtonWidget extends StatefulWidget {
  final bool initialValue;
  final Function(bool) onChanged;
  final Color activeColor;
  final double width;
  final double height;

  const SwitchButtonWidget({
    super.key,
    this.initialValue = false,
    required this.onChanged,
    this.activeColor = AppColors.blue46A7BF,
    this.width = 60,
    this.height = 30,
  });

  @override
  _SwitchButtonWidgetState createState() => _SwitchButtonWidgetState();
}

class _SwitchButtonWidgetState extends State<SwitchButtonWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool _isOn = false;

  @override
  void initState() {
    super.initState();
    _isOn = widget.initialValue;
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _animation = Tween<double>(begin: 0.2, end: 1.1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeOut,
      ),
    );

    if (_isOn) {
      _animationController.value = 1.0;
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isOn = !_isOn;
          if (_isOn) {
            _animationController.forward();
          } else {
            _animationController.reverse();
          }
          widget.onChanged(_isOn);
        });
      },
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(widget.height / 2),
              color: _isOn ? widget.activeColor : Colors.grey.shade300,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 4.h,
                  bottom: 4.h,
                  left: _animation.value * (widget.width - widget.height),
                  child: Container(
                    width: 25.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: _isOn
                        ? Center(
                            child: SvgPicture.asset(
                              'assets/icons/ic_check.svg',
                              height: 18.h,
                              width: 15.w,
                              fit: BoxFit.scaleDown,
                              colorFilter: ColorFilter.mode(
                                AppColors.blue22C1BD,
                                BlendMode.srcIn,
                              ),
                            ),
                          )
                        : null,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

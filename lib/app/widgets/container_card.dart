import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinyte_ui/app/common/values/app_colors.dart';

import '../common/values/styles/app_text_style.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard(
      {Key? key,
      this.width,
      this.topText,
      this.bottomText,
      this.boxShadow,
      this.borderRadius,
      this.backgroundColor,
      this.topTextStyle,
      this.bottomTextStyle,
      this.child,
      this.contentPadding})
      : super(key: key);
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final String? topText;
  final String? bottomText;
  final List<BoxShadow>? boxShadow;
  final Color? backgroundColor;
  final TextStyle? topTextStyle;
  final TextStyle? bottomTextStyle;
  final Widget? child;
  final EdgeInsets? contentPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
          borderRadius: borderRadius ??
              const BorderRadius.horizontal(
                right: Radius.circular(5),
                left: Radius.circular(5),
              ),
          boxShadow: boxShadow ??
              [
                BoxShadow(
                  blurRadius: 15,
                  color: AppColors.shadowColor
                      .withOpacity(0.05), // This line was added
                ),
              ],
          color: backgroundColor ?? Colors.white),
      child: Padding(
        padding: contentPadding ??
            const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: child ??
            Column(
              children: [
                if (topText != null)
                  Text(topText!,
                      style: topTextStyle ??
                          AppTextStyle.regularStyle.copyWith(
                              fontSize: 14, color: const Color(0xff8A9FB6))),
                SizedBox(
                  height: 10.h,
                ),
                if (bottomText != null)
                  Text(bottomText!,
                      style: bottomTextStyle ??
                          AppTextStyle.semiBoldStyle.copyWith(
                            fontSize: 18,
                          )),
              ],
            ),
      ),
    );
  }
}

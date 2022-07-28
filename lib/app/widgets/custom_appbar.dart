import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinyte_ui/app/common/values/styles/app_text_style.dart';
import 'package:infinyte_ui/app/common/values/styles/dimens.dart';

import '../common/values/app_colors.dart';

class CustomAppBar extends PreferredSize {
  final String title;
  final Color? backgroundColor, iconButtonColor;
  final Widget? leading;
  final TextStyle? textStyle;
  final List<Widget>? actions;
  final bool? centerTitle;
  Function()? onTapBackButton;
  Function()? onTapTitle;
  CustomAppBar({
    Key? key,
    required this.title,
    this.backgroundColor = AppColors.white,
    this.iconButtonColor = Colors.black,
    this.leading,
    this.textStyle,
    this.actions,
    this.centerTitle,
    this.onTapBackButton,
    this.onTapTitle,
  }) : super(
          key: key,
          child: const SizedBox.shrink(),
          preferredSize: const Size.fromHeight(kToolbarHeight),
        );

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.white,
      title: Text(
        title,
        style: AppTextStyle.semiBoldStyle.copyWith(
          fontSize: Dimens.fontSize22,
        ),
      ),
      centerTitle: false,
      titleSpacing: 0.0,
      leading: const SizedBox(),
      leadingWidth: 25,
      actions: [
        Container(
          decoration: const BoxDecoration(
              color: AppColors.appBarCircleColor, shape: BoxShape.circle),
          width: 50.w,
        ),
        SizedBox(
          width: 25.w,
        )
      ],
    );
  }
}

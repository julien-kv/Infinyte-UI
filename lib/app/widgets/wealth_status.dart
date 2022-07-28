import 'package:flutter/material.dart';

import '../common/values/styles/app_text_style.dart';

class WealthStatus extends StatelessWidget {
  const WealthStatus(
      {Key? key,
      required this.labelText,
      required this.status,
      this.labelTextStyle,
      this.statusBackgroundColor,
      this.leadingWidth,
      this.trailingWidth,
      this.statusTextStyle,
      this.statusBoxInternalPadding,
      this.statusBoxBorderRadius})
      : super(key: key);

  final String labelText;
  final String status;
  final TextStyle? labelTextStyle;
  final TextStyle? statusTextStyle;
  final Color? statusBackgroundColor;
  final double? leadingWidth;
  final double? trailingWidth;
  final EdgeInsets? statusBoxInternalPadding;
  final double? statusBoxBorderRadius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: leadingWidth ?? 25, right: trailingWidth ?? 15),
      child: Row(
        children: [
          Text(
            labelText,
            style: labelTextStyle ??
                AppTextStyle.regularStyle
                    .copyWith(fontSize: 20, color: const Color(0xff8A9FB6)),
          ),
          const Spacer(),
          Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: statusBackgroundColor ?? const Color(0xffEFF7EE),
                  borderRadius:
                      BorderRadius.circular(statusBoxBorderRadius ?? 20)),
              child: Padding(
                padding: statusBoxInternalPadding ??
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 5),
                child: Text(
                  status,
                  style: statusTextStyle ??
                      AppTextStyle.regularStyle.copyWith(
                          fontSize: 20, color: const Color(0xff505D8D)),
                ),
              )),
        ],
      ),
    );
  }
}

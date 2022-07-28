import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../common/values/styles/app_text_style.dart';
import 'allocation_item.dart';

class AssetAllocation extends StatelessWidget {
  const AssetAllocation(
      {Key? key,
      required this.topText,
      this.topTextStyle,
      required this.allocationItems})
      : super(key: key);
  final String topText;
  final TextStyle? topTextStyle;
  final List<AllocationItem> allocationItems;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          topText,
          style: topTextStyle ??
              AppTextStyle.boldStyle.copyWith(
                fontSize: 20,
              ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Wrap(
            runSpacing: 45.0,
            alignment: WrapAlignment.spaceBetween,
            children: allocationItems),
      ],
    );
  }
}

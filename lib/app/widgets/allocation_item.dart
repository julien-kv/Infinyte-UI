import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:infinyte_ui/app/common/values/app_images.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../common/values/styles/app_text_style.dart';
import '../common/values/styles/dimens.dart';

class AllocationItem extends StatelessWidget {
  const AllocationItem(
      {Key? key,
      required this.allocationItemName,
      required this.allotedAmount,
      required this.amountInPercentage,
      required this.indicatorColor})
      : super(key: key);
  final String allocationItemName;
  final String allotedAmount;
  final double amountInPercentage;
  final Color indicatorColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 125.h,
      height: 170.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SvgPicture.asset(
          //   AppImages.allocationItemIcon,
          //   width: 17,
          //   height: 16.94,
          // ),
          CircularPercentIndicator(
            radius: 50.0,
            lineWidth: 15.0,
            percent: amountInPercentage / 100,
            center: Text("${amountInPercentage.floor()}%",
                style: AppTextStyle.semiBoldStyle.copyWith(
                    fontSize: Dimens.fontSize14, fontWeight: FontWeight.w800)),
            progressColor: indicatorColor,
            circularStrokeCap: CircularStrokeCap.round,
          ),
          SizedBox(
            height: 7.45.h,
          ),
          Expanded(
            child: Text("$allocationItemName $amountInPercentage%",
                style: AppTextStyle.semiBoldStyle.copyWith(
                    fontSize: Dimens.fontSize14, fontWeight: FontWeight.w800)),
          ),
          SizedBox(
            height: 3.h,
          ),
          Text(allotedAmount,
              style: AppTextStyle.regularStyle.copyWith(
                  fontWeight: FontWeight.w600, color: Color(0xff63729F))),
          SizedBox(
            height: 9.h,
          ),
          SizedBox(
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: LinearProgressIndicator(
                value: amountInPercentage / 100,
                valueColor: AlwaysStoppedAnimation<Color>(indicatorColor),
                backgroundColor: const Color(0xffC4C4C4),
                minHeight: 4.61,
              ),
            ),
          )
        ],
      ),
    );
  }
}

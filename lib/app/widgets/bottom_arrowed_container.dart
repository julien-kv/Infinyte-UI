import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:infinyte_ui/app/common/values/app_images.dart';
import 'package:infinyte_ui/app/widgets/container_wrapper.dart';
import 'package:infinyte_ui/app/widgets/price_chart.dart';

import '../common/values/styles/app_text_style.dart';

class BottomArrowedcontainer extends StatefulWidget {
  const BottomArrowedcontainer({Key? key}) : super(key: key);

  @override
  State<BottomArrowedcontainer> createState() => _BottomArrowedcontainerState();
}

class _BottomArrowedcontainerState extends State<BottomArrowedcontainer> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      fit: StackFit.passthrough,
      clipBehavior: Clip.none,
      children: [
        ContainerWrapper(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text("Wealth you've",
                      style: AppTextStyle.regularStyle.copyWith(
                          fontSize: 14, color: const Color(0xff8A9FB6))),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("₹30,000",
                      style: AppTextStyle.boldStyle.copyWith(
                        fontSize: 24,
                      )),
                ],
              ),
              SvgPicture.asset(AppImages.ellipses),
            ],
          ),
        ),
        Positioned(
          bottom: -20.h,
          child: InkWell(
            onTap: () {
              setState(() {
                isExpanded = true;
              });
            },
            child: SvgPicture.asset(
              AppImages.polygonWithBorder,
              width: 52.w,
              height: 30.h,
            ),
          ),
        ),
      ],
    );
  }
}

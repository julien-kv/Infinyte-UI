import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:infinyte_ui/app/common/values/app_images.dart';
import 'package:infinyte_ui/app/widgets/container_card.dart';

class RightPointedContainer extends StatelessWidget {
  const RightPointedContainer(
      {Key? key,
      this.topText,
      this.bottomText,
      this.containerPaddding,
      this.child})
      : super(key: key);

  final String? topText;
  final String? bottomText;
  final EdgeInsets? containerPaddding;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          containerPaddding ?? const EdgeInsets.only(left: 16.0, right: 15),
      child: Stack(
        alignment: Alignment.bottomRight,
        clipBehavior: Clip.none,
        children: [
          child ??
              ContainerCard(
                width: 1.sw,
                topText: topText,
                bottomText: bottomText,
              ),
          Positioned(
            bottom: -2,
            right: -12,
            child: SvgPicture.asset(
              AppImages.polygonIcon,
              width: 52,
              height: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

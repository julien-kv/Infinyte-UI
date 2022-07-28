import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:infinyte_ui/app/common/values/app_images.dart';
import 'package:infinyte_ui/app/widgets/clipshadow_path.dart';

import '../common/values/styles/app_text_style.dart';

class RightEdgedContainer extends StatelessWidget {
  const RightEdgedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipShadowPath(
      clipper: RightEdgeClipper(),
      shadow: Shadow(
        blurRadius: 15,
        color: Colors.grey.shade300, // This line was added
      ),
      child: Container(
        alignment: Alignment.center,
        width: 1.sw,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 23, bottom: 8, right: 30, left: 30),
          child: Column(children: [
            Text("Net assets you’ve",
                style: AppTextStyle.regularStyle
                    .copyWith(fontSize: 14, color: const Color(0xff8A9FB6))),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  child: Text("₹ 10,00,000",
                      style: AppTextStyle.semiBoldStyle.copyWith(
                        fontSize: 20,
                      )),
                ),
                SizedBox(
                  width: 3.w,
                ),
                SvgPicture.asset(
                  AppImages.polygonIcon,
                  width: 26,
                  height: 15,
                )
              ],
            ),
            SizedBox(
              height: 8.h,
            )
          ]),
        ),
      ),
    );
  }
}

class RightEdgeClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.lineTo(size.width - 25, 0);
    path.lineTo(size.width - 25, size.height - 40);
    path.lineTo(size.width - 10, size.height - 30);
    path.lineTo(size.width - 25, size.height - 10);

    path.quadraticBezierTo(
        size.width - 30, size.height - 5, size.width - 40, size.height - 10);
    path.lineTo(20, size.height - 10.0);
    path.quadraticBezierTo(0, size.height - 10, 0, size.height - 30.0);
    // path.lineTo(10, size.height - 10.0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}

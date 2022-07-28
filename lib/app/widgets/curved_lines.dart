import 'package:flutter/material.dart';
import 'package:infinyte_ui/app/common/values/app_colors.dart';

class CurvedLines extends StatelessWidget {
  const CurvedLines({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: LinePainter(),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = AppColors.curvedLineColor;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 3;
    Path path0 = Path();
    path0.moveTo(size.width * 0.9987000, size.height * 0.2286395);
    path0.quadraticBezierTo(size.width * 0.7904250, size.height * 0.3429592,
        size.width * 0.7900833, size.height * 0.5098526);
    path0.quadraticBezierTo(size.width * 0.7910167, size.height * 0.6797506,
        size.width * 0.9980500, size.height * 0.7918821);
    path0.lineTo(size.width * 0.9991667, size.height * 0.1689342);
    path0.quadraticBezierTo(size.width * 0.7084917, size.height * 0.2915193,
        size.width * 0.7077917, size.height * 0.5135714);
    path0.quadraticBezierTo(size.width * 0.7099917, size.height * 0.7428118,
        size.width * 0.9983333, size.height * 0.8480726);
    path0.lineTo(size.width * 0.9991667, size.height * 0.1133787);
    path0.quadraticBezierTo(size.width * 0.6252917, size.height * 0.2299887,
        size.width * 0.6237417, size.height * 0.5131066);
    path0.quadraticBezierTo(size.width * 0.6249000, size.height * 0.7961678,
        size.width * 0.9975000, size.height * 0.9058957);
    canvas.drawPath(path0, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

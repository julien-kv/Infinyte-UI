import 'package:flutter/material.dart';
import 'dimens.dart';

class AppTextStyle {
  const AppTextStyle._();

  static final TextStyle semiBoldStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize16,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle boldStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize24,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle regularStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize18,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle smallStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize12,
    fontWeight: FontWeight.w500,
  );
  static final TextStyle greyTextStyleSmall =
      _textStyle.copyWith(fontSize: Dimens.fontSize12, color: Colors.grey);
  static final TextStyle greyTextStyleMedium =
      _textStyle.copyWith(fontSize: Dimens.fontSize14, color: Colors.grey);
  static final TextStyle greyTextStyleMediumBold = _textStyle.copyWith(
    fontSize: Dimens.fontSize14,
    color: Colors.grey,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle buttonTextStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize16,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle subHeaderStyle = TextStyle(
      fontSize: Dimens.fontSize14,
      color: const Color(0xff323232),
      fontWeight: FontWeight.w700);
  static final TextStyle sectionHeaderStyle =
      TextStyle(fontSize: Dimens.fontSize11, color: Colors.black);

  static final TextStyle _textStyle = TextStyle(
    color: Colors.black,
    fontSize: Dimens.fontSize14,
    fontFamily: 'Manrope',
  );
}

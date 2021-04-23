import 'package:flutter/material.dart';

const LargeTextSize = 28.0;
const MediumTextSize = 20.0;
const SmallTextSize = 15.0;

const String FontNameDefault = 'Roboto';

const TitleTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.bold,
  fontSize: LargeTextSize,
  color: Color(0xFFFF9100),
);

const HeadlineTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontWeight: FontWeight.bold,
  fontSize: MediumTextSize,
  color: Color(0xFF3E2723),
);

const BodyTextStyle = TextStyle(
  fontFamily: FontNameDefault,
  fontSize: SmallTextSize,
  color: Colors.black87,
);
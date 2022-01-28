import 'package:flutter/material.dart';

extension ContextExtension on BuildContext{
  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension MediaQueryExtension on BuildContext{
  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get lowValue => height*0.01;
  double get normalValue => height*0.02;
  double get mediumValue => height*0.04;
  double get highValue => height*0.1;
  
  double get lowValueWidht => width*0.01;
  double get normalValueWidht => width*0.02;
  double get mediumValueWidht => width*0.04;
  double get highValueWidht => width*0.1;
}
extension PaddingExtension on BuildContext{
  EdgeInsets get paddingLow => EdgeInsets.all(lowValue);
  EdgeInsets get paddingNormal => EdgeInsets.all(normalValue);
  EdgeInsets get paddingMedium => EdgeInsets.all(mediumValue);
  EdgeInsets get paddingHigh => EdgeInsets.all(highValue);
}
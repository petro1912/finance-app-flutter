import 'package:flutter/material.dart';
import 'package:finance_app/app.dart';

const kPrimaryColor = Color(0xFF87C234);
const kPrimaryLightColor = Color(0xFFE8F7D3);

const double breakpointSmall = 576.0;
const double breakpointMedium = 992.0;
const double defaultPadding = 16.0;


enum DeviceType {
  small,
  medium,
  large
}

DeviceType get deviceType {
  BuildContext context = 
              App.navigatorKey.currentState!.context;
              
  var screenSize = MediaQuery.of(context).size;

  if (screenSize.width < breakpointSmall) {
    return DeviceType.small;
  } else if (screenSize.width < breakpointMedium) {
    return DeviceType.medium;
  } else {
    return DeviceType.large;
  }  
}

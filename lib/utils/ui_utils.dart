import 'package:flutter/cupertino.dart';
import 'package:responsive_architecture/enums/device_sreen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData mediaQuery){
  var oriantation = mediaQuery.orientation;
  double deviceWith = 0;
  if(oriantation == Orientation.portrait){
    deviceWith = mediaQuery.size.width;
  }else{
    deviceWith = mediaQuery.size.height;
  }
  if(deviceWith > 950){
    return DeviceScreenType.Desktop;
  }
  if(deviceWith > 600){
    return DeviceScreenType.Tablet;
  }
  return DeviceScreenType.Mobile;

}
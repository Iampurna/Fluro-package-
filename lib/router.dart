import 'package:fluro/fluro.dart';
import 'package:fluro_package/screen1.dart';
import 'package:fluro_package/screen2.dart';
import 'package:flutter/material.dart';

class RouterFluro {
  static FluroRouter fluroRouter = FluroRouter();

  static var screenOnehandler = Handler(
      handlerFunc: ((BuildContext? context, Map<String, dynamic> params) {
    return const Screen1();
  }));

  static var screenTwohandler = Handler(
      handlerFunc: ((BuildContext? context, Map<String, dynamic> params) {
    return Screen2(name: params["name"][0], address: params["address"][0]);
  }));

  static initRoues() {
    fluroRouter.define("/",
        handler: screenOnehandler, transitionType: TransitionType.inFromBottom);
    fluroRouter.define("second/:name/:address",
        handler: screenTwohandler, transitionType: TransitionType.fadeIn);
  }
}

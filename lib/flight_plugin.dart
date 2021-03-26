
import 'package:flutter/material.dart';

/// A Class to init FlightPlugin.
class FlightPlugin {
  static GlobalKey<NavigatorState>? navigatorKey;
  init({required navigatorKey})
  {
    FlightPlugin.navigatorKey=navigatorKey;
  }

}
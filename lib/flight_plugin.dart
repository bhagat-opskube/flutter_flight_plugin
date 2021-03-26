
import 'package:flutter/material.dart';
import 'package:flutter_flight_plugin/api/apis.dart';

/// A Class to init FlightPlugin.
class FlightPlugin {
  static GlobalKey<NavigatorState>? navigatorKey;
  init({required GlobalKey<NavigatorState> navigatorKey,required String apiBaseUrl})
  {
    FlightPlugin.navigatorKey=navigatorKey;
    Config.API_BASE_URL=apiBaseUrl;
  }

}
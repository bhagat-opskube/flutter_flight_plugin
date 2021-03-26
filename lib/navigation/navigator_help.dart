
import 'package:flutter/material.dart';
import 'package:flutter_flight_plugin/flight_plugin.dart';
import 'package:package_info/package_info.dart';


navigatorPush(context,widgetScreen)async
{
  return await Navigator.push(context, MaterialPageRoute(
      builder: (_) => widgetScreen));
}

navigatorPushReplace(context,widgetScreen)async
{
  return await Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
      builder: (_) =>widgetScreen),(Route<dynamic> route) => false);
}

goBack()
{
  if(FlightPlugin.navigatorKey==null)
    {
      throw "Plugin navigatorKey is not set";
    }
  if(Navigator.canPop(FlightPlugin.navigatorKey!.currentContext!))
    Navigator.pop(FlightPlugin.navigatorKey!.currentContext!);
}

Future<String> getAppCurrentVersion() async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  String version = packageInfo.version;
  String buildNumber = packageInfo.buildNumber;
  String currentAppVersion = "$version.$buildNumber";
  return currentAppVersion;
}

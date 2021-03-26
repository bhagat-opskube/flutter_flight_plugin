
import 'package:flutter/material.dart';
import 'package:flutter_flight_plugin/navigation/navigator_help.dart';
import 'package:flutter_flight_plugin/responsive/my_size.dart';

class _SplashScreen extends StatefulWidget {
  _SplashScreen({Key? key}):super(key:key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<_SplashScreen> {


  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {

    return SafeArea(
      child: new Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  padding:  EdgeInsets.all(size_8),
                  color: Color(0xFFe5e5e5),
                  child: Center(
                    child: Text("",style: TextStyle(color: Colors.yellow),)
                  ),
                )
              ],
            ),
            Positioned.fill(
              child: Container(
                color: Colors.black,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding:  EdgeInsets.all(size_8),
                        child: Image.asset("assets/images/flight.png",width: size_100,height: size_100,))
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                top: size_12,
                right: size_12,
                child: Container(
                    child: FutureBuilder(
                        future: getAppCurrentVersion(),builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData){
                        return Text("version : ${snapshot.data}",style: Theme.of(context).textTheme.caption!.copyWith(fontSize: size_12,color: Colors.white),);
                      }
                      else
                        return Text("");})))
          ],
        ),
      ),
    );
  }
}


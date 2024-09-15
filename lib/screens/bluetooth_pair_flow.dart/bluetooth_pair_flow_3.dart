import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthapp/components/navigation/appBar_pair_device.dart';
import 'package:healthapp/screens/bluetooth_pair_flow.dart/bluetooth_pair_flow_1.dart';
import 'package:healthapp/screens/home_screen.dart';
import 'package:healthapp/screens/settings/settings_screen.dart';
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart';

class BluetoothPairFlow3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBarPairDevice(),
        backgroundColor: backgroundLight,
        body: Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 24, right: 24, top: 100),
                    child: Text(
                      'Searching for devices...',
                      textAlign: TextAlign.center,
                      style: h3.copyWith(fontWeight: bold),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  // alignment: Alignment.center,
                  child: TweenAnimationBuilder<double>(
                    tween: Tween(
                        begin: 0, end: 1), // Define the range of the animation
                    duration: Duration(
                        seconds:
                            5), // Set the duration of the animation to 10 seconds
                    builder: (context, value, _) {
                      // The builder function is called each time the animation value changes
                      // 'value' represents the current value of the animation, which ranges from 0 to 1
                      return CircularProgressIndicator(
                        strokeWidth: 10,
                        strokeCap: StrokeCap.round,
                        // Set the value of the CircularProgressIndicator based on the animation value
                        value: value,
                        valueColor: AlwaysStoppedAnimation<Color>(primary),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Make sure your phone is close to your device and that the bluetooth is on. Also make sure your device is charged.',
                          textAlign: TextAlign.center,
                          style: body,
                        ),
                      ),
                      SizedBox(height: 15),
                      Material(
                        color: primary,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    HomeScreen(), // This should take user back to beginning of the bluetooth pairing flow
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 20,
                            ),
                            child: Text(
                              'Cancel',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}

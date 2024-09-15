import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthapp/components/navigation/appBar_pair_device.dart';
import 'package:healthapp/screens/bluetooth_pair_flow.dart/bluetooth_pair_flow_2.dart';
import 'package:healthapp/screens/home_screen.dart';
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart';

class BluetoothPairFlow1 extends StatelessWidget {
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
                      'Pair your device with your phone',
                      textAlign: TextAlign.center,
                      style: h3.copyWith(fontWeight: bold, letterSpacing: -0.5),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 0, bottom: 0),
                    child: Center(
                      child: Image.asset(
                        "assets/images/pair-reader-1.png",
                        height: 380,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              'Make sure your device & phone have a active bluetooth connection.',
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
                                    builder: (context) => BluetoothPairFlow2(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 20,
                                ),
                                child: Text(
                                  'Pair to device',
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
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}

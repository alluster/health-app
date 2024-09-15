// lib/widgets/card_device.dart

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthapp/models/device.dart';
import 'package:healthapp/screens/home_screen.dart';
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart'; // Ensure this import path is correct for your styles

class CardDeviceIsBonded extends StatelessWidget {
  final Device device;

  CardDeviceIsBonded({required this.device});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          border: Border.all(color: borderLight),
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: !device.isConnecting || !device.isBonding
            ? Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.batteryFull,
                            size: 11,
                            color: fontDark,
                          ),
                          SizedBox(width: 10),
                          Text('${device.battery.toString()}%',
                              style:
                                  body.copyWith(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Device:',
                              style: body.copyWith(color: fontDark)),
                          Text(' | ', style: body.copyWith(color: fontDark)),
                          Text(
                            device.id,
                            style: body.copyWith(
                                color: fontDark, fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.solidCheckCircle,
                            size: 16,
                            color: green,
                          ),
                          SizedBox(width: 10),
                          Image.asset(
                            'assets/images/reader-wire.png',
                            height: 50,
                          ),
                          SizedBox(width: 5),
                        ],
                      ),
                      Row(
                        children: [
                          Material(
                            color: red,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 20,
                                ),
                                child: Text(
                                  'Disconnect',
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
                    ],
                  ),
                ],
              )
            : Center(
                child: Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(primary),
                  ),
                ),
              ));
  }
}

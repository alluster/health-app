import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthapp/components/cards/card_result.dart';
import 'package:healthapp/components/lists/devices_list/devices_list_isBonded.dart';
import 'package:healthapp/components/lists/devices_list/devices_list_notBonded.dart';
import 'package:healthapp/components/lists/results_list/results_list.dart';
import 'package:healthapp/components/navigation/appBarSettingsScreen.dart';
import 'package:healthapp/components/navigation/appbar.dart';
import 'package:healthapp/screens/create_result/create_result_screen.dart';
import 'package:healthapp/screens/home_screen.dart';
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBasSettingsScreen(),
      backgroundColor: backgroundLight,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Text(
              'Paired Devices',
              style: h5.copyWith(fontWeight: bold),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: DevicesListIsBonded()),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Text(
              'Found devices',
              style: h5.copyWith(fontWeight: bold),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: DevicesListNotBonded()),
          ),
        ],
      ),
    );
  }
}

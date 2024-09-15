import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthapp/components/navigation/appbar.dart';
import 'package:healthapp/components/value_row.dart';
import 'package:healthapp/models/expansion_panel.dart';
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart';

class resultScreen extends StatelessWidget {
  final String id;

  resultScreen({required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        backgroundColor: white,
        body: Column(children: [
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(
              bottom: 8,
              top: 24,
            ),
            child: Column(
              children: [
                Center(
                    child: Column(children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Center horizontally
                    children: [
                      Icon(
                        FontAwesomeIcons.solidCheckCircle,
                        size: 16,
                        color: green,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Perfect Workout',
                        style: h3.copyWith(color: fontDark),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                  Text('34 min', style: body.copyWith(color: fontLight)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Center hor
                    children: [
                      Icon(
                        FontAwesomeIcons.solidUser,
                        size: 11,
                        color: fontDark,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'John Doe',
                        style: body.copyWith(
                            color: fontDark, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                ])),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(bottom: 8, left: 24, right: 24),
            child: Column(
              children: [
                ValueRow(label: 'Date', value: '2024-05-24'),
                ValueRow(label: 'Time', value: '08:34'),
                ValueRow(label: 'Sleep quality', value: 'Average'),
                ValueRow(label: 'Stress level', value: 'Average'),
                ValueRow(label: 'Alcohol consumption', value: 'Moderate'),
                ValueRow(label: 'Nutrition', value: 'Average'),
                ValueRow(label: 'Physical activity', value: '4 hours / week'),
                ValueRow(label: 'Medication', value: 'Normal')
              ],
            ),
          )
        ]));
  }
}

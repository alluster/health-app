// lib/widgets/card_result.dart

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthapp/models/result.dart'; // Import the result model
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart'; // Ensure this import path is correct for your styles

class CardResult extends StatelessWidget {
  final Result result;

  CardResult({required this.result});

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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.solidUser,
                    size: 11,
                    color: fontDark,
                  ),
                  SizedBox(width: 10),
                  Text(result.subjectProfileNickName,
                      style: body.copyWith(fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                children: [
                  Text('Device:', style: body.copyWith(color: fontDark)),
                  Text(' | ', style: body.copyWith(color: fontDark)),
                  Text(
                    result.deviceId,
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
                    FontAwesomeIcons.solidClock,
                    size: 16,
                    color: green,
                  ),
                  SizedBox(width: 10),
                  Text(
                    result.concentration,
                    style: h3.copyWith(color: fontDark),
                  ),
                  SizedBox(width: 5),
                  Text('min', style: body.copyWith(color: fontLight)),
                ],
              ),
              Row(
                children: [
                  Text(result.measurementDate,
                      style: body.copyWith(color: fontLight)),
                  Text(' | ', style: body.copyWith(color: fontDark)),
                  Text(
                    result.measurementTime,
                    style: body.copyWith(
                        color: fontDark, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

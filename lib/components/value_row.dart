// lib/widgets/card_result.dart

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthapp/models/result.dart'; // Import the result model
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart'; // Ensure this import path is correct for your styles

class ValueRow extends StatelessWidget {
  final String label;
  final String value;

  const ValueRow({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // Icon(
                //   FontAwesomeIcons.solidUser,
                //   size: 11,
                //   color: fontDark,
                // ),
                // SizedBox(width: 10),
                Text(label,
                    style: body.copyWith(fontWeight: FontWeight.normal)),
              ],
            ),
            Row(
              children: [
                Text(
                  value,
                  style: body.copyWith(
                      color: fontDark, fontWeight: FontWeight.w800),
                ),
              ],
            ),
          ],
        ));
  }
}

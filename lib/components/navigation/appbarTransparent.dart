import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthapp/screens/settings/settings_screen.dart';
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBarTransparent extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.white), // Set icon color to white
      centerTitle: true,
      elevation: 0,

      title: Row(
        children: [
          Icon(
            FontAwesomeIcons.solidCheckCircle,
            size: 11,
            color: green,
          ),
          SizedBox(width: 10),
          SizedBox(width: 10),
          Text(
            'Apple Watch',
            style: body.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white), // Set text color to white
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

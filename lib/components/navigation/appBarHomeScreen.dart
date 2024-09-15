import 'package:flutter/material.dart';
import 'package:healthapp/screens/settings/settings_screen.dart';
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarHomeScreen extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: white,
      centerTitle: true,
      elevation: 0,
      automaticallyImplyLeading: false,
      actions: <Widget>[
        Container(
          padding: EdgeInsets.only(right: 16),
          child: GestureDetector(
            child: Icon(
              FontAwesomeIcons.cog,
              size: 20,
              color: primary,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsScreen(),
                ),
              );
            },
          ),
        ),
      ],
      title: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.solidCheckCircle,
              size: 11,
              color: green,
            ),
            SizedBox(width: 10),
            SizedBox(width: 10),
            Text('Apple Watch',
                style: body.copyWith(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

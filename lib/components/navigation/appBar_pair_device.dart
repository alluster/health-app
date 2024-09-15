import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthapp/screens/settings/settings_screen.dart';
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppBarPairDevice extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        title: Center(
          child: Text('Connecting device',
              style: body.copyWith(fontWeight: FontWeight.normal)),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:healthapp/components/forms/form_all.dart';
import 'package:healthapp/components/navigation/appbar.dart';
import 'package:healthapp/components/video_player.dart';
import 'package:healthapp/screens/create_result/take_sample_screen.dart';
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart';
import 'package:provider/provider.dart';

class CreateResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: white,
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 0),
              child: Text(
                textAlign: TextAlign.center,
                'New Workout',
                style: h5,
              )),
          Container(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 20),
            child: FormAll(),
          ),
        ],
      ),
    );
  }
}

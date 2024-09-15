import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthapp/components/cards/card_result.dart';
import 'package:healthapp/components/lists/results_list/results_list.dart';
import 'package:healthapp/components/navigation/appBarHomeScreen.dart';
import 'package:healthapp/components/navigation/appbar.dart';
import 'package:healthapp/screens/create_result/create_result_screen.dart';
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHomeScreen(),
      backgroundColor: backgroundLight,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 30.0),
            child: resultsList(),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Center(
                child: FractionallySizedBox(
                    widthFactor: 0.5, // 50% width of the parent container
                    child: Material(
                      color: primary,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CreateResultScreen(),
                              ));
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    scrollable: true,
                                    backgroundColor: white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16.0))),
                                    surfaceTintColor: white,
                                    title: null,
                                    content: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 20),
                                          Text(
                                              'Here’s what you’ll need to get started:',
                                              style: h6),
                                          SizedBox(height: 20),
                                          Text('• Running Shoes', style: body),
                                          Text('• Apple Watch or similar',
                                              style: body),
                                          Text('• 30 mins of time',
                                              style: body),
                                        ]),
                                    actions: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 20),
                                        child: InkWell(
                                            child: Text('Cancel',
                                                style: h6.copyWith(
                                                    fontWeight: bold)),
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomeScreen(),
                                                ),
                                              );
                                            }),
                                      ),
                                      Material(
                                        color: primary,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 20),
                                            child: Text(
                                              'Start',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Text(
                            'Start Workout',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ))),
          ),
        ],
      ),
    );
  }
}

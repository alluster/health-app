import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthapp/screens/home_screen.dart';
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart';
import 'package:healthapp/styles/colors.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(top: 100, bottom: 40),
                child: Center(
                  child: Image.asset(
                    "assets/images/hello_world.png",
                    height: 280,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.only(left: 40, right: 40),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Easily analyze your progress.',
                        textAlign: TextAlign.center,
                        style: h2.copyWith(fontWeight: bold),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          'Become a better runner by measuring your progress.',
                          textAlign: TextAlign.center,
                          style: h5,
                        ),
                      ),
                      SizedBox(height: 15),
                      Material(
                        color: primary,
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
                              'Take me to the App',
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

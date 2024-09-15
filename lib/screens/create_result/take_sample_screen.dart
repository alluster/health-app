import 'package:flutter/material.dart';
import 'package:healthapp/components/count_down_timer.dart';
import 'package:healthapp/components/video_player.dart';
import 'package:healthapp/screens/home_screen.dart';
import 'package:healthapp/styles/colors.dart';
import 'package:healthapp/styles/typography.dart';
import 'package:healthapp/components/navigation/appbarTransparent.dart';

class TakeSampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: CustomAppBarTransparent(),
      backgroundColor: lightGray,
      body: PageView(
        children: [
          Page_1(context),
          Page_2(context),
          Page_3(context),
        ],
      ),
    );
  }
}

Widget Page_1(BuildContext context) {
  return Stack(children: [
    Positioned.fill(
      child: FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: VideoPlayerComponent(
            videoAssetPath: 'assets/videos/flow_1.mp4',
          ),
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black.withOpacity(0.5), Colors.transparent],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
    ),
    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Added line
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Get ready for your perfect workout',
              textAlign: TextAlign.left, // Uncommented and set to left
              style: h6.copyWith(
                  color: Colors.white,
                  fontWeight:
                      FontWeight.bold), // Changed bold to FontWeight.bold
            ),
            SizedBox(height: 10),
            Text(
              'Get your device ready and start your workout.',
              textAlign: TextAlign.left, // Uncommented and set to left
              style: body.copyWith(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight:
                      FontWeight.bold), // Changed bold to FontWeight.bold
            ),
            SizedBox(height: 10),
            Text(
              'Swipe to see next ->',
              textAlign: TextAlign.left, // Added line
              style: body.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight
                      .bold), // Changed white to Colors.white and bold to FontWeight.bold
            ),
          ],
        ),
      ),
    ]),
  ]);
}

Widget Page_2(BuildContext context) {
  return Stack(children: [
    Positioned.fill(
      child: FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: VideoPlayerComponent(
            videoAssetPath: 'assets/videos/flow_2.mp4',
          ),
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black.withOpacity(0.5), Colors.transparent],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
    ),
    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Added line
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Start your routine',
                textAlign: TextAlign.left, // Uncommented and set to left
                style: h6.copyWith(
                    color: Colors.white,
                    fontWeight:
                        FontWeight.bold), // Changed bold to FontWeight.bold
              ),
              SizedBox(height: 10),
              Text(
                'Start your exercise routine and use the timer to measure your workout.',
                textAlign: TextAlign.left, // Uncommented and set to left
                style: body.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight:
                        FontWeight.bold), // Changed bold to FontWeight.bold
              ),
              SizedBox(height: 10),
              Text(
                'Swipe to see next ->',
                textAlign: TextAlign.left, // Added line
                style: body.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight
                        .bold), // Changed white to Colors.white and bold to FontWeight.bold
              ),
            ],
          ),
        ),
      ]),
    ]),
  ]);
}

Widget Page_3(BuildContext context) {
  return Stack(children: [
    Positioned.fill(
      child: FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: VideoPlayerComponent(
            videoAssetPath: 'assets/videos/flow_3.mp4',
          ),
        ),
      ),
    ),
    Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black.withOpacity(0.5), Colors.transparent],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
    ),
    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 0, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Added line
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Stop your workout and press analyze your workout to get results.',
              textAlign: TextAlign.left, // Uncommented and set to left
              style: h6.copyWith(
                  color: Colors.white,
                  fontWeight:
                      FontWeight.bold), // Changed bold to FontWeight.bold
            ),
            SizedBox(height: 10),
            Text(
              'Now get ready wor your well deserved relax time..',
              textAlign: TextAlign.left, // Added line
              style: body.copyWith(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight
                      .normal), // Changed white to Colors.white and bold to FontWeight.bold
            ),
            SizedBox(height: 20),
            FractionallySizedBox(
              widthFactor: 0.5,
              child: Material(
                color: primary,
                borderRadius: BorderRadius.circular(8),
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
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Text(
                      'Run Workout Analysis',
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
            ),
          ],
        ),
      ),
    ]),
  ]);
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:healthapp/styles/colors.dart';

class CountdownTimer extends StatefulWidget {
  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  late Timer _timer;
  int _secondsLeft = 45;
  bool _isActive = false;

  @override
  void initState() {
    super.initState();
    _timer = Timer(Duration(seconds: 0), () {});
  }

  void _startOrResetTimer() {
    if (!_isActive) {
      _startTimer();
    } else {
      _resetTimer();
    }
  }

  void _startTimer() {
    _isActive = true;
    _timer.cancel();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsLeft > 0) {
          _secondsLeft--;
        } else {
          _timer.cancel();
          _isActive = false;
        }
      });
    });
  }

  void _resetTimer() {
    _timer.cancel();
    setState(() {
      _secondsLeft = 45;
      _isActive = false;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 20),
        FractionallySizedBox(
          widthFactor: 0.5,
          child: Material(
            color: primary,
            borderRadius: BorderRadius.circular(8),
            child: GestureDetector(
              onTap: _startOrResetTimer,
              child: Container(
                color: _isActive ? Colors.red : primary,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  _isActive
                      ? '$_secondsLeft seconds Stop and reset'
                      : 'Start timer',
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
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: CountdownTimer(),
      ),
    ),
  ));
}

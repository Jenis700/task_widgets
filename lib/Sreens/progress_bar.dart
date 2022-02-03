import 'dart:async';

import 'package:flutter/material.dart';

class ProgressBarScreen extends StatefulWidget {
  const ProgressBarScreen({Key? key}) : super(key: key);

  @override
  State<ProgressBarScreen> createState() => _ProgressBarScreenState();
}

class _ProgressBarScreenState extends State<ProgressBarScreen> {
  late bool _loading;
  late double _progress;
  late double _progressValue;

  @override
  void initState() {
    super.initState();
    _loading = false;
    _progress = 0.0;
    _progressValue = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progress Bar Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: _loading
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LinearProgressIndicator(
                        backgroundColor: Colors.cyanAccent,
                        valueColor: AlwaysStoppedAnimation(Colors.red),
                        value: _progress,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("${(_progress * 100).round()}%"),
                      Divider(
                        height: 75,
                        thickness: 2,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircularProgressIndicator(
                              strokeWidth: 10,
                              backgroundColor: Colors.yellow,
                              valueColor:
                                  new AlwaysStoppedAnimation<Color>(Colors.red),
                              value: _progressValue,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Text('${(_progressValue * 100).round()}%'),
                            ),
                            Divider(
                              height: 75,
                              thickness: 2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Text("Press Button For Downloading..."),
          ),
          Container(
            child: _loading
                ? LinearProgressIndicator()
                : Text("Press button for downloading",
                    style: TextStyle(fontSize: 25)),
          ),
          Divider(
            height: 75,
            thickness: 2,
          ),
          CircularProgressIndicator(
            backgroundColor: Colors.red,
            strokeWidth: 5,
          ),
          Divider(
            height: 75,
            thickness: 2,
          ),
        ],
      ),
      floatingActionButton: Stack(
        children: [
          Container(
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  _loading = !_loading;
                  _updateProgress();
                });
              },
              tooltip: "Downloading...",
              child: Icon(Icons.cloud_download),
            ),
          ),
        ],
      ),
    );
  }

  void _updateProgress() {
    const oneSec = const Duration(seconds: 2);
    new Timer.periodic(
      oneSec,
      (Timer t) {
        setState(
          () {
            _progress += 0.01;
            if (_progress.toStringAsFixed(1) == '1') {
              return;
            }
          },
        );
      },
    );
  }
}

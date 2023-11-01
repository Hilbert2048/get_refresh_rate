import 'package:flutter/material.dart';
import 'package:get_refresh_rate/get_refresh_rate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
            child: FutureBuilder<int>(
              future: GetRefreshRate().getRefreshRate(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text('fps: ${snapshot.data}');
                } else {
                  return const Text('fps: -');
                }
              },
            )
        ),
      ),
    );
  }
}

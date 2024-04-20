import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui_dashboard/views/dashboar_view.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Row(
        children: [
          const ResponsiveDashBoard(),
        ],
      ),

    );
  }
}

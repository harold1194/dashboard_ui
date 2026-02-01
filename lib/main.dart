import 'package:dashboard_ui/screens/dashboardview.dart';
import 'package:dashboard_ui/utils/colors/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: GlobalColors.solidColor),
        useMaterial3: true,
      ),
      home: const DashboardView(),
    );
  }
}


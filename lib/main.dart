import 'package:flutter/material.dart';
import '101/resim_islemleri.dart';
import '101/scaffold_widget.dart';
import '101/sizedbox_container.dart';
import '101/text_widget.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ResimIslemleri(),
    );
  }
}



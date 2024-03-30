import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_list/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent)) ; //for transparent of uper app bar
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo APP',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:hone_page(),
    );
  }
}


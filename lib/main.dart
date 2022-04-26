import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/widgets/show_dialog.dart';
import 'package:getx/widgets/snackbar.dart';

void main(){

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        scaffoldBackgroundColor: Colors.white
      ),
      home: const ShowDialog()
    );
  }
}
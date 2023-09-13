import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_media_app/pages/home_page.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MaterialApp(
    title:  'Social Media',
    //need to specified primary theme
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

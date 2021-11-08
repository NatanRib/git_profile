import 'package:flutter/material.dart';
import 'package:git_profile/ui/views/user_profile_search_page.dart';

void main() {
  runApp(
    MaterialApp(
      showSemanticsDebugger: false,
      theme: ThemeData(
        primaryColor: Colors.grey[700],
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 26,
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
          headline2: TextStyle(
            fontSize: 26,
            color: Colors.white,
            fontWeight: FontWeight.normal
          ),
          bodyText1: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.normal
          ),
          bodyText2: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.normal
          )
        ),
        backgroundColor: const Color(0xffffffff)
      ),
      home: const UserProfileSearchPage()),
    );
}


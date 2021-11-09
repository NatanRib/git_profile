import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/snackbar/snack.dart';

class CustomSnackBar extends  GetBar{
  
  String message;

  CustomSnackBar({Key? key,required this.message }) : super(key: key){
        backgroundColor: Colors.grey;
        titleText:  Text(
          message,
          style: const TextStyle(color: Colors.white),
        );
        messageText: const Text('');
        duration: const Duration(seconds: 3);
  }
  
}
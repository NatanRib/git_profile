import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  
  final String text;
  final bool header;
  final bool colorWhite;  
  const CustomTextWidget({Key? key, required this.text, required this.header, this.colorWhite = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Text(
      
      header && text.length > 45 ?
        text.substring(0, 45)+'...':
      header && text.length < 45 ?
        text:
      !header && text.length > 50 ?
        text.substring(0, 50)+'...':
        text,
      textDirection: TextDirection.ltr,
      style: header && !colorWhite ?
        Theme.of(context).textTheme.headline1:
          header && colorWhite ? 
        Theme.of(context).textTheme.headline2:
          !header && !colorWhite ?
        Theme.of(context).textTheme.bodyText1:
        Theme.of(context).textTheme.bodyText2
    );
  }
}

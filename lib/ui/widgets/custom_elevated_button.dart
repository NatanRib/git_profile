import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {

  final Function function;
  final String text;

  const CustomElevatedButton({Key? key, required this.function, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 12.0, bottom: 38),
        child: SizedBox(
          height: MediaQuery.of(context).size.aspectRatio < 1
              ? MediaQuery.of(context).size.height * 0.06
              : MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.aspectRatio < 1
              ? MediaQuery.of(context).size.height * 0.25
              : MediaQuery.of(context).size.height * 0.4,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Theme.of(context).primaryColor)),
              onPressed: ()=> function(),
              child: Text(text)),
        ));
  }
}

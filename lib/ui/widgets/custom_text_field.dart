import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  
  final Function onSubmit;

  const CustomTextField({Key? key, required this.onSubmit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final controller = TextEditingController();

    return SizedBox(
      height: MediaQuery.of(context).size.aspectRatio < 1
          ? MediaQuery.of(context).size.height * 0.10
          : MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.aspectRatio < 1
          ? MediaQuery.of(context).size.height * 0.85
          : MediaQuery.of(context).size.height * 0.6,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          labelText: 'Profile Login',
          labelStyle: TextStyle(color: Theme.of(context).primaryColor),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        cursorColor: Theme.of(context).primaryColor,        
        controller: controller,
        onChanged: (text)=> onSubmit(controller.text),
      ),
    );
  }
}

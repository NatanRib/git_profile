import 'package:flutter/material.dart';

import 'package:git_profile/ui/widgets/custom_texte_widget.dart';

class CustomInfoCard extends StatelessWidget {
  final double height;
  final String text;
  final IconData icon;

  const CustomInfoCard(
      {Key? key, required this.height, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.only(top: 12, left: 8, right: 8),
      padding: const EdgeInsets.only(top: 3, bottom: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.25),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, -0.1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 8),
            child: CustomTextWidget(
              text: text,
              header: false,
              colorWhite: true,
            ),
          ),
        ],
      ),
    );
  }
}

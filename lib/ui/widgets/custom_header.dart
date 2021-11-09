import 'package:flutter/material.dart';

import 'package:git_profile/ui/widgets/custom_text_widget.dart';

class CustomHeader extends StatelessWidget {
  final double height;
  final double width;
  final String nameText;
  final String bioText;
  final String imageUrl;

  const CustomHeader(
      {Key? key,
      required this.height,
      required this.width,
      required this.nameText,
      required this.bioText,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: height / 2,
        width: width,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius:
              const BorderRadius.only(bottomRight: Radius.circular(60)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.25),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, -0.1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                child: CircleAvatar(
                  radius: 85,
                  backgroundImage: NetworkImage(imageUrl, scale: 3),
                )
              ),
              flex: 4,
            ),
            Expanded(
                flex: 1,
                child: CustomTextWidget(
                  text: nameText,
                  header: true,
                  colorWhite: true,
                )),
            Expanded(
                flex: 1,
                child: CustomTextWidget(
                  text: bioText,
                  header: false,
                  colorWhite: true,
                )),
          ],
        ),
      ),
    );
  }
}

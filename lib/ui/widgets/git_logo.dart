import 'package:flutter/material.dart';

class GitLogo extends StatelessWidget {
  const GitLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 12.0, bottom: 38, left: 12, right: 12),
      child: Image.asset(
        'assets/octocat.png',
        width: MediaQuery.of(context).size.width * 0.5,
        height: MediaQuery.of(context).size.height * 0.3,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:git_profile/ui/widgets/custom_header.dart';
import 'package:git_profile/ui/widgets/custom_info_card.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (context, constraints) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomHeader(
                height: constraints.maxHeight * 0.9,
                width: constraints.maxWidth,
                nameText:
                    'alifhaksfbjwukafbauksfawkuhfaufhawuhfaoushfawhifauofhaufhwaofuhaslfhwauofhauoshf',
                bioText:
                    'alifhaksfbjwukafbauksfawkuhfaufhawuhfaoushfawhifauofhaufhwaofuhaslfhwauofhauoshf',
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomInfoCard(
                      text:
                          'akshfakhufausuhfawkfhakusfhawfbakwdbakwjdbawkujdakjdbawkbdkajbd',
                      height: constraints.maxHeight * 0.06,
                      icon: Icons.work_outline,
                    ), //company
                    CustomInfoCard(
                      text:
                          'akshfakhufausuhfawkfhakusfhawfbakwdbakwjdbawkujdakjdbawkbdkajbd',
                      height: constraints.maxHeight * 0.06,
                      icon: Icons.home_outlined,
                    ),
                    Row(
                      children: [
                        CustomInfoCard(
                          text: '11000000',
                          height: constraints.maxHeight * 0.06,
                          icon: Icons.person_outline,
                        ),
                        CustomInfoCard(
                          text: '11000000',
                          height: constraints.maxHeight * 0.06,
                          icon: Icons.star_border,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}

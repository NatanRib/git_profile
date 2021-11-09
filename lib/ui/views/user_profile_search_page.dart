import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:git_profile/presentation/user_profile_controller.dart';
import 'package:git_profile/ui/widgets/custom_elevated_button.dart';
import 'package:git_profile/ui/widgets/custom_text_field.dart';
import 'package:git_profile/ui/widgets/git_logo.dart';

import 'package:get/get.dart';

class UserProfileSearchPage extends StatelessWidget {
  const UserProfileSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final UserProfileController userProfileController = Get.put(UserProfileController());
    
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const GitLogo(),
              CustomTextField(onSubmit: userProfileController.changeSearchText,),
              CustomElevatedButton(text: 'SEARCH', function: userProfileController.searchUserProfile,),
            ],
          ),
        ),
      ),
    );
  }
}

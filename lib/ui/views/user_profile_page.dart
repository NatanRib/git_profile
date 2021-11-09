import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:git_profile/presentation/repositories_controller.dart';
import 'package:git_profile/presentation/user_profile_controller.dart';

import 'package:git_profile/ui/widgets/custom_header.dart';
import 'package:git_profile/ui/widgets/custom_info_card.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final repositoriesController = Get.put(RepositoriesController());
    final UserProfileController userProfileController = Get.find();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: LayoutBuilder(
          builder: (context, constraints) =>
              GetX<UserProfileController>(builder: (controller) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: CustomHeader(
                        height: constraints.maxHeight * 0.9,
                        width: constraints.maxWidth,
                        nameText: controller.user.value.name,
                        bioText: controller.user.value.bio,
                        imageUrl: controller.user.value.imageUrl,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomInfoCard(
                              text: controller.user.value.company,
                              height: constraints.maxHeight * 0.06,
                              icon: Icons.work_outline,
                            ), //company
                            CustomInfoCard(
                              text: controller.user.value.location,
                              height: constraints.maxHeight * 0.06,
                              icon: Icons.home_outlined,
                            ),
                            Row(
                              children: [
                                CustomInfoCard(
                                  text: controller.user.value.followers
                                      .toString(),
                                  height: constraints.maxHeight * 0.06,
                                  icon: Icons.person_outline,
                                ),
                                CustomInfoCard(
                                  text: controller.user.value.following
                                      .toString(),
                                  height: constraints.maxHeight * 0.06,
                                  icon: Icons.star_border,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              })),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => repositoriesController.listRepositories(userProfileController.user.value),
        backgroundColor: Theme.of(context).primaryColor,
        label: const Text('REPOSITORIES'),
        isExtended: true,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_profile/presentation/repositories_controller.dart';

class RepositoriesListingPage extends StatelessWidget {
  const RepositoriesListingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: GetX<RepositoriesController>(
          builder: (controller) => ListView.builder(
            itemCount: controller.repositories.length,
              itemBuilder: (context, index) => Material(
                    color: Colors.grey[700],
                    elevation: 2,
                    child: GetX<RepositoriesController>(
                      builder: (controller) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Text(controller.repositories[index].name),
                                Icon(
                                  Icons.remove_red_eye_outlined,
                                  semanticLabel: controller
                                      .repositories[index].whatcherCount
                                      .toString(),
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(controller.repositories[index].description),
                                Icon(
                                  Icons.star_border,
                                  semanticLabel: controller.repositories[index].stargazersCount.toString(),
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ],
                        );
                      }
                    ),
                  ))),
    );
  }
}

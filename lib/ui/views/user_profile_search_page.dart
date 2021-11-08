import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UserProfileSearchPage extends StatelessWidget {
  const UserProfileSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height.toString() +
        ' / ' +
        MediaQuery.of(context).size.width.toString());
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
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 38, left: 12, right: 12),
                child: Image.asset('assets/octocat.png', width: MediaQuery.of(context).size.width * 0.5, height: MediaQuery.of(context).size.height * 0.3,),
              ),
              SizedBox(
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
                    labelStyle:
                        TextStyle(color: Theme.of(context).primaryColor),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  cursorColor: Theme.of(context).primaryColor,
                ),
              ),
              Padding(
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
                      onPressed: () {},
                      child: const Text('Pesquisar')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

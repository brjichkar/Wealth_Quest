import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipOval(
                  child: Image.network(
                    'https://www.clipartmax.com/png/middle/258-2582267_circled-user-male-skin-type-1-2-icon-male-user-icon.png',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                const TextField(
                  autofocus: false,
                  autocorrect: false,
                  keyboardType: TextInputType.name,
                  maxLines: 1,
                  maxLength: 20,
                  decoration: InputDecoration(
                    counterText: kEmpty,
                    labelText: kEnterFirstName,
                    //label style
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  autofocus: false,
                  autocorrect: false,
                  keyboardType: TextInputType.name,
                  maxLines: 1,
                  maxLength: 20,
                  decoration: InputDecoration(
                    counterText: kEmpty,
                    labelText: kEnterLastName,
                    //label style
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                ElevatedButton.icon(
                  icon: Icon(Icons.save),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: const Color(0xff000000),
                  ),
                  label: const Text(kSave),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

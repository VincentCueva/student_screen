import 'package:flutter/material.dart';
import 'package:sign_up/widgets/avatar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Nilagyan ko lang ng background color para makita palitan niyo nalang ng image gaya nung figma natin
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                IconButton(
                  icon: Icon(Icons.settings, color: Colors.white),
                  onPressed: () {
                    // Functionality ng Settings
                  },
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: AvatarWithName(),
          ),
        ],
      ),
    );
  }
}

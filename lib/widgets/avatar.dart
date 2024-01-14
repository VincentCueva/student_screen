import 'package:flutter/material.dart';
import 'package:sign_up/widgets/container.dart';

class AvatarWithName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 70.0,
          backgroundImage: AssetImage('assets/placeholder_image.jpg'), // Avatar ng main account
        ),
        SizedBox(height: 14.0),
        Text(
          'Your Name',
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 16.0),
        ExpandedContainerWithButtons(),
      ],
    );
  }
}

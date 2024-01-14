import 'package:flutter/material.dart';

class ExpandedContainerWithButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 5.0,
              width: 50.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ExpandedButton('History', Colors.blue),
              ExpandedButton('Achievement', Colors.yellow),
              ExpandedButton('Student', Colors.green),
            ],
          ),
          SizedBox(height: 16.0),
          Column(
            children: [
              CircularImageWithName(),
              SizedBox(height: 8.0),
              CircularImageWithName(),
              SizedBox(height: 8.0),
              CircularImageWithName(),
            ],
          ),
        ],
      ),
    );
  }
}

class ExpandedButton extends StatelessWidget {
  final String text;
  final Color color;

  ExpandedButton(this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        constraints: BoxConstraints(maxWidth: 100.0),
        child: ElevatedButton(
          onPressed: () {
            // Yung functionality ng buttons dito
          },
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: color,
          ),
        ),
      ),
    );
  }
}

class CircularImageWithName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircularImagePlaceholder(),
        SizedBox(width: 8.0),
        Expanded(
          child: Text(
            'Names',
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
        ),
      ],
    );
  }
}

class CircularImagePlaceholder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30.0,
          backgroundImage: AssetImage('assets/placeholder_image.jpg'),
        ),
        SizedBox(height: 8.0),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class MonButton extends StatelessWidget {
  const MonButton({super.key, this.icon, required this.number});
  final icon;
  final String number;

  //pour enlever error
  // MonButton({this.icon, required this.number});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          //TAILLE des icons
          Icon(
            icon,
            size: 35,
          ),
          SizedBox(
            height: 10,
          ),
          Text(number),
        ],
      ),
    );
  }
}

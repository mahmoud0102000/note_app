import 'package:flutter/material.dart';
import 'package:note_app/view/widget/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Note',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
        Spacer(),
        CustomIcon()
      ],
    );
  }
}

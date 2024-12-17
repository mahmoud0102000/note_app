import 'package:flutter/material.dart';
import 'package:note_app/view/widget/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
                color: kPrimarycolor, borderRadius: BorderRadius.circular(8)),
            child: const Text('add',
                style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.bold))));
  }
}

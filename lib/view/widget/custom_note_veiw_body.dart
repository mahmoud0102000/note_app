import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/view/widget/custom_app_bar.dart';
import 'package:note_app/view/widget/custom_note_item.dart';
import 'package:note_app/view/widget/custom_note_listveiw.dart'; // استخدمه فقط إذا كان ضرورياً

class CustomNoteVeiwBody extends StatelessWidget {
  const CustomNoteVeiwBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
          Expanded(child: CustomNoteListveiw())
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/view/widget/custom_app_bar.dart';
import 'package:note_app/view/widget/custom_textfield.dart';

class EditNoteVeiw extends StatelessWidget {
  const EditNoteVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            icon: Icons.check,
            title: 'Edit Note',
          ),
          SizedBox(height: 30),
          CustomTextfield(
            hint: 'Title',
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextfield(
            hint: 'content',
            maxlines: 5,
          ),
        ],
      ),
    ));
  }
}

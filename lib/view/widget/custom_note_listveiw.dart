import 'package:flutter/material.dart';
import 'package:note_app/view/widget/custom_note_item.dart';

class CustomNoteListveiw extends StatelessWidget {
  const CustomNoteListveiw({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return CustomNoteItem();
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/view/widget/custom_add_bottom_sheet.dart';
import 'package:note_app/view/widget/custom_note_veiw_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  context: context,
                  builder: (context) {
                    return CustomAddBottomSheet();
                  });
            },
            child: Icon(Icons.add)),
        body: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: CustomNoteVeiwBody(),
        ));
  }
}
import 'package:flutter/material.dart';
import 'package:note_app/view/widget/custom_button.dart';
import 'package:note_app/view/widget/custom_textfield.dart';

class CustomAddBottomSheet extends StatelessWidget {
  const CustomAddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: AddNoteForm(),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 30),
          CustomTextfield(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextfield(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'content',
            maxlines: 5,
          ),
          const Spacer(),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}

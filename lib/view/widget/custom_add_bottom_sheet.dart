import 'package:flutter/material.dart';
import 'package:note_app/view/widget/custom_textfield.dart';

class CustomAddBottomSheet extends StatelessWidget {
  const CustomAddBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          const SizedBox(height: 30),
          const CustomTextfield(
            hint: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomTextfield(
            hint: 'content',
            maxlines: 5,
          ),
          Spacer(),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('add', style: TextStyle(color: Colors.black)),
            ),
          )
        ],
      ),
    );
  }
}

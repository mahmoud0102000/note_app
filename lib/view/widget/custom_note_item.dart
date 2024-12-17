import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/edit_note_veiw.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditNoteVeiw();
        }));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: const Color(0xffFFcc80),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: const Text(
                    'Flutter Tips',
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      'Build your career with Mahmoud Elgogary',
                      style: TextStyle(
                          color: Colors.black.withOpacity(0.4), fontSize: 20),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      // اضف هنا ما تريد أن يحدث عند الضغط
                    },
                    icon: const Icon(
                      FontAwesomeIcons.trash,
                      size: 24, // يمكن استبدالها بـ Icons.delete
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Text(
                    '21, May, 2024',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

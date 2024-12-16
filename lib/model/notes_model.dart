import 'package:flutter/material.dart';

class NotesModel {
  final String title;
  final String subtitle;
  final String data;
  final int color;

  NotesModel(
      {required this.title,
      required this.subtitle,
      required this.data,
      required this.color});
}

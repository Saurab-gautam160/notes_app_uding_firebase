import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_cli/style/app_style.dart';

class NotesEditScreen extends StatefulWidget {
  const NotesEditScreen({super.key});

  @override
  State<NotesEditScreen> createState() => _NotesEditScreenState();
}

class _NotesEditScreenState extends State<NotesEditScreen> {
  @override
  Widget build(BuildContext context) {
    int color_id = Random().nextInt(Appstyle.cardsColor.length);
    return Scaffold(
      backgroundColor: Appstyle.cardsColor[color_id],
      appBar: AppBar(
        backgroundColor: Appstyle.cardsColor[color_id],
        elevation: 0.0,
        title: Text('Add a new note'),
      ),

    );
  }
}

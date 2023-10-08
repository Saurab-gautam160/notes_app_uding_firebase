import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cli/style/app_style.dart';

class NotesEditScreen extends StatefulWidget {
  const NotesEditScreen({super.key});

  @override
  State<NotesEditScreen> createState() => _NotesEditScreenState();
}

class _NotesEditScreenState extends State<NotesEditScreen> {
  int color_id = Random().nextInt(Appstyle.cardsColor.length);
  String date = DateTime.now().toString();
  TextEditingController _titleController = TextEditingController();
  TextEditingController _mainController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appstyle.cardsColor[color_id],
      appBar: AppBar(
        backgroundColor: Appstyle.cardsColor[color_id],
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text(
          'Add a new note',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: 'Notes Title'),
              style: Appstyle.maintitle,
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              date,
              style: Appstyle.datetitle,
            ),
            const SizedBox(
              height: 28.0,
            ),
            TextField(
              controller: _mainController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: 'Notes content'),
              style: Appstyle.maincontent,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          FirebaseFirestore.instance
              .collection('notes')
              .add({
                'notes_title': _titleController.text,
                'creation_date': date,
                'notes_content': _mainController.text,
                'color_id': color_id,
              })
              .then(
                (value) => {
                  print(value),
                  Navigator.pop(context),
                },
              )
              .catchError(
                ((error) => print("Failed to add new notes due to $error ")),
              );
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cli/style/app_style.dart';

Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Appstyle.cardsColor[doc["color_id"]],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doc["notes_title"],
            style: Appstyle.maintitle,
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            doc["creation_date"],
            style: Appstyle.datetitle,
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            doc["notes_content"],
            style: Appstyle.maintitle,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}

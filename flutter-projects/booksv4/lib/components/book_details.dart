// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../const.dart';
import '../services/book.dart';
import 'book_info_line.dart';

class BookDetails extends StatelessWidget {
  final Book book;
  const BookDetails(this.book, {Key? key}) : super(key: key);
  createInfoRow(context, label, value) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 3,
              child: Text(label,
                  style: Theme.of(context).textTheme.headlineMedium),
            ),
            Expanded(
              flex: 7,
              child: Text(value.toString(),
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
        Divider(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            BookInfoLine(book),
            Divider(color: dividerColor),
            Text(
              'Synopsys',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              book.description,
            ),
          ],
        ),
      ),
    );
  }
}

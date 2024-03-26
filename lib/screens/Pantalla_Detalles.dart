import 'package:flutter/material.dart';
import 'package:programovil_examen_danielmorales_62241019/models/Libro.dart';

class BookDetailScreen extends StatelessWidget {
  final Book book;

  const BookDetailScreen({required this.book, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Año: ${book.year}'),
            Text('Editorial: ${book.publisher}'),
            Text('ISBN: ${book.isbn}'),
            Text('Páginas: ${book.pages}'),
            const Text('Villanos Asociados:'),
            ...book.villains.map((villain) => Text(villain.name)).toList(),
          ],
        ),
      ),
    );
  }
}

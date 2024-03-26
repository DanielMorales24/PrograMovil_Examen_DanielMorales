import 'package:flutter/material.dart';
import 'package:programovil_examen_danielmorales_62241019/models/Libro.dart';

class BookListItem extends StatelessWidget {
  final Book book;
  final VoidCallback onTap;

  const BookListItem({required this.book, required this.onTap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(book.title),
      subtitle: Text(book.publisher),
      onTap: onTap,
    );
  }
}
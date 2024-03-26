import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:programovil_examen_danielmorales_62241019/models/Libro.dart';
import 'package:programovil_examen_danielmorales_62241019/screens/Pantalla_Detalles.dart';
import 'package:programovil_examen_danielmorales_62241019/widgets/BookList.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Book> books = _loadBooksFromJson(); 

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Libros'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return BookListItem(
            book: books[index],
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BookDetailScreen(book: books[index]),
              ));
            },
          );
        },
      ),
    );
  }

  List<Book> _loadBooksFromJson() {
    try {
      String jsonString = File('data.json').readAsStringSync();
      List<dynamic> jsonList = json.decode(jsonString)['data'];
      return jsonList.map((json) => Book.fromJson(json)).toList();
    } catch (e) {
      print('Error cargando libros: $e');
      return []; // En caso de error, devuelve una lista vacía
    }
  }
}

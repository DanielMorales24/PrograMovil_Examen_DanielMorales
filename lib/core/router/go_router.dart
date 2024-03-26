import 'package:flutter/material.dart';
import 'package:programovil_examen_danielmorales_62241019/screens/Pantalla_Principal.dart';

import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (context, state) => const BooksScreen(),
    ),
  ],
);

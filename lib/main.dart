// ignore_for_file: unused_local_variable

import 'package:clean_arch_movie_app/core/services/services_locator.dart';
import 'package:clean_arch_movie_app/features/movie/presentation/views/movies_screen.dart';
import 'package:flutter/material.dart';

void main() {
  ServicesLocator().init();

  runApp(const MoviesTxApp());
}

class MoviesTxApp extends StatelessWidget {
  const MoviesTxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainMoviesScreen(),
    );
  }
}

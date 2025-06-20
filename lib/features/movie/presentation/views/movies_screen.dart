// ignore_for_file: use_super_parameters

import 'package:clean_arch_movie_app/core/services/services_locator.dart';

import 'package:clean_arch_movie_app/features/movie/presentation/controller/movie_bloc.dart';
import 'package:clean_arch_movie_app/features/movie/presentation/controller/movie_event.dart';
import 'package:clean_arch_movie_app/features/movie/presentation/widgets/now_playing_component.dart';
import 'package:clean_arch_movie_app/features/movie/presentation/widgets/popular_component.dart';
import 'package:clean_arch_movie_app/features/movie/presentation/widgets/top_rated_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class MainMoviesScreen extends StatelessWidget {
  const MainMoviesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MovieBloc>()
        ..add(GetNowPlayingMoviesEvent())
        ..add(GetPopularMoviesEvent())
        ..add(GetTopRatedMoviesEvent()),

      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          key: const Key('movieScrollView'),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NowPlayingComponent(),
              Container(
                margin: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: GoogleFonts.poppins(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.15,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        /// TODO : NAVIGATION TO POPULAR SCREEN
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Text('See More'),
                            Icon(Icons.arrow_forward_ios, size: 16.0),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              PopularComponent(),
              Container(
                margin: const EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top Rated",
                      style: GoogleFonts.poppins(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.15,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        /// TODO : NAVIGATION TO Top Rated Movies Screen
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Text('See More'),
                            Icon(Icons.arrow_forward_ios, size: 16.0),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TopRatedComponent(),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}

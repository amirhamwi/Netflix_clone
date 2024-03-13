import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_application_1/providers/movies_provider.dart';

class ComingSoon extends ConsumerWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var upcomingMoviesRef = ref.watch(upcomingProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Coming Soon Movies'),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          if (upcomingMoviesRef.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (upcomingMoviesRef.hasError) {
            return Center(
              child: Text('Error: ${upcomingMoviesRef.error}'),
            );
          }

          return ListView.separated(
            cacheExtent: 9000,
            itemBuilder: (context, index) {
              final movie = upcomingMoviesRef.value!.results[index];
              return ListTile(
                leading: CachedNetworkImage(
                  imageUrl: "https://image.tmdb.org/t/p/original/" +
                      (movie.posterPath ?? movie.backdropPath!),
                  height: 100,
                  width: 100,
                ),
                title: Text(movie.title),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: upcomingMoviesRef.value!.results.length,
          );
        },
      ),
    );
  }
}

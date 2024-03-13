import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/movies_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../managers/resource_manager.dart';
import '../widgets/custom_botton.dart';
import '../widgets/error_text.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (context, ref, child) {
          var trendingMoviesRef = ref.watch(trendingMoviesProvider);
          if (trendingMoviesRef.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (trendingMoviesRef.hasError) {
            return ErrorText(
              error: "Something went wrong",
              onPressed: () {
                ref
                    .read(trendingMoviesProvider.notifier)
                    .getTrendingMovies('day', 1);
              },
            );
          }

          return CustomScrollView(
            slivers: [
              SliverAppBar(
                leading: Container(
                    padding: const EdgeInsets.all(8),
                    child:
                        Image.asset(ResourceManager().getResource('logo.png'))),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.play_arrow,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person,
                      ))
                ],
              ),
              SliverToBoxAdapter(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 2,
                      foregroundDecoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.9)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: CachedNetworkImageProvider(
                                  "https://image.tmdb.org/t/p/original/" +
                                      trendingMoviesRef
                                          .value!.results.first.posterPath!),
                              fit: BoxFit.cover)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomButton(
                              onPressed: () {},
                              text: AppLocalizations.of(context)!.play,
                              textStyle: const TextStyle(color: Colors.white),
                              borderColor: Colors.white,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            CustomButton(
                              textStyle: const TextStyle(color: Colors.white),
                              borderColor: Colors.white,
                              onPressed: () {},
                              text: AppLocalizations.of(context)!.download,
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Trending Movies',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 200,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: ListView.separated(
                            // cacheExtent: 9000, you also can use cached_network_image
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                child: CachedNetworkImage(
                                    imageUrl:
                                        "https://image.tmdb.org/t/p/original/" +
                                            (trendingMoviesRef
                                                    .value!
                                                    .results[index]
                                                    .posterPath ??
                                                trendingMoviesRef
                                                    .value!
                                                    .results[index]
                                                    .backdropPath!)),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                width: 10,
                              );
                            },
                            itemCount: trendingMoviesRef.value!.results.length),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/providers/movies_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/error_text.dart';

class SearchView extends ConsumerWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var searchRef = ref.watch(searchProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: false,
      ),
      body: Column(
        children: [
          TextField(
            onSubmitted: (value) {
              ref.read(searchProvider.notifier).searchMovie(value, 1);
            },
            onChanged: (value) {
              if (value.length > 3) {
                ref.read(searchProvider.notifier).searchMovie(value, 1);
              }
            },
            // decoration: InputDecoration(),
          ),
          const SizedBox(
            height: 20,
          ),
          Consumer(
            builder: (context, ref, child) {
              // search ref

              if (searchRef.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (searchRef.hasError) {
                return ErrorText(
                  error: "Something went wrong",
                  onPressed: () {},
                );
              }
              return Expanded(
                child: ListView.separated(
                  cacheExtent: 9000,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        if (searchRef.value!.results[index].backdropPath !=
                                null ||
                            searchRef.value!.results[index].backdropPath !=
                                null)
                          CachedNetworkImage(
                            imageUrl: "https://image.tmdb.org/t/p/original/${searchRef.value!.results[index].posterPath ??
                                    searchRef
                                        .value!.results[index].backdropPath!}",
                            height: 150,
                            width: 150,
                          ),
                        Expanded(
                            child: Text(
                          searchRef.value!.results[index].title,
                        ))
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                  itemCount: searchRef.value!.results.length,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

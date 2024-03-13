// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$trendingMoviesHash() => r'dd05597709eab4c869be829bc6b5bce84a78676e';

/// See also [TrendingMovies].
@ProviderFor(TrendingMovies)
final trendingMoviesProvider =
    AutoDisposeAsyncNotifierProvider<TrendingMovies, MoviesResponse>.internal(
  TrendingMovies.new,
  name: r'trendingMoviesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$trendingMoviesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TrendingMovies = AutoDisposeAsyncNotifier<MoviesResponse>;
String _$searchHash() => r'58596f0d1c4a1aab757c37cbcd0a22341ed50120';

/// See also [Search].
@ProviderFor(Search)
final searchProvider =
    AutoDisposeAsyncNotifierProvider<Search, MoviesResponse>.internal(
  Search.new,
  name: r'searchProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$searchHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Search = AutoDisposeAsyncNotifier<MoviesResponse>;
String _$upcomingHash() => r'8935ba7c76c62bae50eb9a822f6fee1cb94bbde0';

/// See also [Upcoming].
@ProviderFor(Upcoming)
final upcomingProvider =
    AutoDisposeAsyncNotifierProvider<Upcoming, MoviesResponse>.internal(
  Upcoming.new,
  name: r'upcomingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$upcomingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Upcoming = AutoDisposeAsyncNotifier<MoviesResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

part of 'search_bloc.dart';

abstract class SearchState extends Equatable {
  const SearchState();
}

class SearchInitial extends SearchState {
  @override
  List<Object> get props => [];
}

class SearchLoading extends SearchState {
  @override
  List<Object> get props => [];
}

class SearchComplete extends SearchState {
  final PokemonDetails? pokemonDetails;

  SearchComplete([this.pokemonDetails]);
  @override
  List<Object?> get props => [pokemonDetails];
}

class SearchError extends SearchState {
  final String error;

  SearchError(this.error);
  @override
  List<Object> get props => [error];
}

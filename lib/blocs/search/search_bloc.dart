import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pokedex/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex/services/poke_api_service.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final PokeApiService pokeApiService;
  SearchBloc(this.pokeApiService) : super(SearchInitial()) {
    on<SearchEvent>((event, emit) async {
      try {
        if (event is CommitSearchEvent) {
          emit(SearchLoading());
          PokemonDetails? pokemonDetails =
              await pokeApiService.getPokemonByName(event.searchTerms);
          emit(SearchComplete(pokemonDetails));
        }
      } catch (e) {
        emit(SearchError(e.toString()));
      }
    });
  }
}

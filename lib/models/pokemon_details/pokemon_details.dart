import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/item_link.dart';
import 'package:pokedex/models/pokemon_details/ability/ability.dart';
import 'package:pokedex/models/pokemon_details/game_indices/game_indices.dart';
import 'package:pokedex/models/pokemon_details/held_items/held_item.dart';
import 'package:pokedex/models/pokemon_details/moves/move.dart';
import 'package:pokedex/models/pokemon_details/past_type/type.dart';
import 'package:pokedex/models/pokemon_details/sprites/sprites.dart';
import 'package:pokedex/models/pokemon_details/stats/stats.dart';

import 'types/type.dart';

part 'pokemon_details.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class PokemonDetails {
  final int id;
  final String name;
  final int baseExperience;
  final int height;
  final bool isDefault;
  final int order;
  final int weight;
  final String locationAreaEncounters;
  final List<Ability>? abilities;
  final List<ItemLink>? forms;
  final List<GameIndices>? gameIndices;
  final List<HeldItem>? heldItems;
  final List<Move>? moves;
  final ItemLink? species;
  final List<Stat>? stats;
  final List<PokemonType>? types;
  final List<PastType>? pastTypes;
  final Sprites? sprites;

  PokemonDetails(
      this.id,
      this.name,
      this.baseExperience,
      this.height,
      this.isDefault,
      this.order,
      this.weight,
      this.locationAreaEncounters,
      this.abilities,
      this.forms,
      this.gameIndices,
      this.heldItems,
      this.moves,
      this.species,
      this.stats,
      this.types,
      this.pastTypes,
      this.sprites);

  factory PokemonDetails.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailsFromJson(json);
}

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/item_link.dart';
import 'package:pokedex/models/pokemon_details/types/type.dart';

part 'type.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class PastType extends Equatable {
  final ItemLink generation;
  final List<PokemonType> types;

  PastType(this.generation, this.types);

  factory PastType.fromJson(Map<String, dynamic> json) =>
      _$PastTypeFromJson(json);

  @override
  List<Object?> get props => [generation, types];
}

import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/item_link.dart';

part 'type.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class PokemonType {
  final int slot;
  final ItemLink type;

  PokemonType(this.slot, this.type);

  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);
}

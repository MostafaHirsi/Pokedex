import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/item_link.dart';

part 'game_indices.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class GameIndices {
  final int gameIndex;
  final ItemLink version;

  GameIndices(this.gameIndex, this.version);

  factory GameIndices.fromJson(Map<String, dynamic> json) =>
      _$GameIndicesFromJson(json);
}

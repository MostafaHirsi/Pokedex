import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/item_link.dart';

part 'game_indices.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class GameIndices extends Equatable {
  final int gameIndex;
  final ItemLink version;

  GameIndices(this.gameIndex, this.version);

  factory GameIndices.fromJson(Map<String, dynamic> json) =>
      _$GameIndicesFromJson(json);

  @override
  // TODO: implement props
  List<Object?> get props => [gameIndex, version];
}

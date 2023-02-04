import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/item_link.dart';

import 'version_group_details.dart';

part 'move.g.dart';

@JsonSerializable()
class Move {
  final ItemLink move;
  final VersionGroupDetails versionGroupDetails;

  Move(this.move, this.versionGroupDetails);

  factory Move.fromJson(Map<String, dynamic> json) => _$MoveFromJson(json);
}

import 'package:json_annotation/json_annotation.dart';

import '../../item_link.dart';
part 'ability.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class Ability {
  final bool isHidden;
  final int slot;
  final ItemLink ability;

  Ability(this.isHidden, this.slot, this.ability);

  factory Ability.fromJson(Map<String, dynamic> json) =>
      _$AbilityFromJson(json);
}

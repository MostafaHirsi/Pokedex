import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/item_link.dart';
import 'package:pokedex/models/pokemon_details/held_items/version_details.dart';

part 'held_item.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class HeldItem extends Equatable {
  final ItemLink item;
  final List<VersionDetail> versionDetails;

  HeldItem(this.item, this.versionDetails);

  factory HeldItem.fromJson(Map<String, dynamic> json) =>
      _$HeldItemFromJson(json);

  @override
  // TODO: implement props
  List<Object?> get props => [item, versionDetails];
}

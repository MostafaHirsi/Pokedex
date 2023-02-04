import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/item_link.dart';
import 'package:pokedex/models/pokemon_details/held_items/version_details.dart';

part 'held_item.g.dart';

@JsonSerializable()
class HeldItem {
  final ItemLink item;
  final VersionDetail versionDetail;

  HeldItem(this.item, this.versionDetail);

  factory HeldItem.fromJson(Map<String, dynamic> json) =>
      _$HeldItemFromJson(json);
}

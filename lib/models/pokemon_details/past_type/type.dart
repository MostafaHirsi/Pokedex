import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/item_link.dart';

part 'type.g.dart';

@JsonSerializable()
class PastType {
  final ItemLink generation;
  final List<ItemLink> types;

  PastType(this.generation, this.types);

  factory PastType.fromJson(Map<String, dynamic> json) =>
      _$PastTypeFromJson(json);
}

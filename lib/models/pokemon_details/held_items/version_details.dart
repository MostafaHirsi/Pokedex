import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/item_link.dart';

part 'version_details.g.dart';

@JsonSerializable()
class VersionDetail {
  final int rarity;
  final ItemLink version;

  VersionDetail(this.rarity, this.version);

  factory VersionDetail.fromJson(Map<String, dynamic> json) =>
      _$VersionDetailFromJson(json);
}

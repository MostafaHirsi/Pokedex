import 'package:json_annotation/json_annotation.dart';

part 'item_link.g.dart';

@JsonSerializable()
class ItemLink {
  final String name;
  final String url;

  ItemLink(this.name, this.url);
  factory ItemLink.fromJson(Map<String, dynamic> json) =>
      _$ItemLinkFromJson(json);
}

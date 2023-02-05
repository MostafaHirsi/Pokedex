import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_link.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class ItemLink extends Equatable {
  final String name;
  final String url;

  ItemLink(this.name, this.url);
  factory ItemLink.fromJson(Map<String, dynamic> json) =>
      _$ItemLinkFromJson(json);

  @override
  List<Object?> get props => [name, url];
}

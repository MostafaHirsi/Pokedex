import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/item_link.dart';

part 'version_group_details.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class VersionGroupDetails extends Equatable {
  final int levelLearnedAt;
  final ItemLink versionGroup;
  final ItemLink moveLearnMethod;

  VersionGroupDetails(
      this.levelLearnedAt, this.versionGroup, this.moveLearnMethod);

  factory VersionGroupDetails.fromJson(Map<String, dynamic> json) =>
      _$VersionGroupDetailsFromJson(json);

  @override
  List<Object?> get props => [levelLearnedAt, versionGroup, moveLearnMethod];
}

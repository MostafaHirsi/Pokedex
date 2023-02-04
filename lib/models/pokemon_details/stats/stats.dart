import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/item_link.dart';

part 'stats.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class Stat {
  final int baseStat;
  final int effort;
  final ItemLink stat;

  Stat(this.baseStat, this.effort, this.stat);

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);
}

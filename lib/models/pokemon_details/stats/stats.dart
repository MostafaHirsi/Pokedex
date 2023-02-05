import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/item_link.dart';

part 'stats.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class Stat extends Equatable {
  final int baseStat;
  final int effort;
  final ItemLink stat;

  Stat(this.baseStat, this.effort, this.stat);

  factory Stat.fromJson(Map<String, dynamic> json) => _$StatFromJson(json);

  @override
  List<Object?> get props => [baseStat, effort, stat];
}

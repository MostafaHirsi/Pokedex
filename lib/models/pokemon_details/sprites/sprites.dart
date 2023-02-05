import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/pokemon_details/sprites/other_sprites.dart';
import 'package:pokedex/models/pokemon_details/sprites/versions_sprites.dart';

part 'sprites.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Sprites extends Equatable {
  final String? frontDefault;
  final String? frontFemale;
  final String? frontShiny;
  final String? frontShinyFemale;
  final String? frontGray;
  final String? backDefault;
  final String? backFemale;
  final String? backShiny;
  final String? backShinyFemale;
  final String? backGray;
  final String? gray;
  final Sprites? animated;
  final OtherSprites? other;
  final PreviousVersionSprites? versions;

  Sprites({
    this.frontGray,
    this.backGray,
    this.gray,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.animated,
    this.other,
    this.versions,
  });

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);

  @override
  List<Object?> get props => [
        frontGray,
        backGray,
        gray,
        frontDefault,
        frontFemale,
        frontShiny,
        frontShinyFemale,
        backDefault,
        backFemale,
        backShiny,
        backShinyFemale,
        animated,
        other,
        versions
      ];
}

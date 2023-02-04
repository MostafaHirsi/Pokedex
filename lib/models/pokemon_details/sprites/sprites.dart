import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/pokemon_details/sprites/other_sprites.dart';
import 'package:pokedex/models/pokemon_details/sprites/versions_sprites.dart';

part 'sprites.g.dart';

@JsonSerializable()
class Sprites {
  final String frontDefault;
  final String frontFemale;
  final String frontShiny;
  final String frontShinyFemale;
  final String backDefault;
  final String backFemale;
  final String backShiny;
  final String backShinyFemale;
  final OtherSprites other;
  final PreviousVersionSprites versions;

  Sprites(
      this.frontDefault,
      this.frontFemale,
      this.frontShiny,
      this.frontShinyFemale,
      this.backDefault,
      this.backFemale,
      this.backShiny,
      this.backShinyFemale,
      this.other,
      this.versions);

  factory Sprites.fromJson(Map<String, dynamic> json) =>
      _$SpritesFromJson(json);
}

import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/pokemon_details/sprites/generations/generation.dart';
import 'package:pokedex/models/pokemon_details/sprites/sprites.dart';

part 'versions_sprites.g.dart';

@JsonSerializable()
class PreviousVersionSprites {
  final Generation1 generationI;
  final Generation2 generationII;
  final Generation3 generationIII;
  final Generation4 generationIV;
  final Generation5 generationV;
  final Generation6 generationVI;
  final Generation7 generationVII;
  final Generation8 generationVIII;

  PreviousVersionSprites(
      this.generationI,
      this.generationII,
      this.generationIII,
      this.generationIV,
      this.generationV,
      this.generationVI,
      this.generationVII,
      this.generationVIII);

  factory PreviousVersionSprites.fromJson(Map<String, dynamic> json) =>
      _$PreviousVersionSpritesFromJson(json);
}

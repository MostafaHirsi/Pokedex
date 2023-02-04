import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/pokemon_details/sprites/generations/generation.dart';
import 'package:pokedex/models/pokemon_details/sprites/sprites.dart';

part 'versions_sprites.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class PreviousVersionSprites {
  @JsonKey(name: 'generation-i')
  final Generation1 generationI;
  @JsonKey(name: 'generation-ii')
  final Generation2 generationII;
  @JsonKey(name: 'generation-iii')
  final Generation3 generationIII;
  @JsonKey(name: 'generation-iv')
  final Generation4 generationIV;
  @JsonKey(name: 'generation-v')
  final Generation5 generationV;
  @JsonKey(name: 'generation-vi')
  final Generation6 generationVI;
  @JsonKey(name: 'generation-vii')
  final Generation7 generationVII;
  @JsonKey(name: 'generation-viii')
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

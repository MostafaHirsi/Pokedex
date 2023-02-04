import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/pokemon_details/sprites/sprites.dart';

part 'other_sprites.g.dart';

@JsonSerializable()
class OtherSprites {
  final Sprites dreamWorld;
  final Sprites home;
  final Sprites officialArtwork;

  OtherSprites(this.dreamWorld, this.home, this.officialArtwork);

  factory OtherSprites.fromJson(Map<String, dynamic> json) =>
      _$OtherSpritesFromJson(json);
}

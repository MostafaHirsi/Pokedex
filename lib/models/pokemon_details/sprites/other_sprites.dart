import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/pokemon_details/sprites/sprites.dart';

part 'other_sprites.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class OtherSprites extends Equatable {
  final Sprites dreamWorld;
  final Sprites home;
  @JsonKey(name: 'official-artwork')
  final Sprites officialArtwork;

  OtherSprites(this.dreamWorld, this.home, this.officialArtwork);

  factory OtherSprites.fromJson(Map<String, dynamic> json) =>
      _$OtherSpritesFromJson(json);

  @override
  List<Object?> get props => [dreamWorld, home, officialArtwork];
}

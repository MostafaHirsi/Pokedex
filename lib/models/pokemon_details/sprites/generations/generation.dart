import 'package:json_annotation/json_annotation.dart';
import 'package:pokedex/models/pokemon_details/sprites/sprites.dart';

part 'generation.g.dart';

@JsonSerializable(fieldRename: FieldRename.kebab, includeIfNull: false)
class Generation1 {
  final Sprites redBlue;
  final Sprites yellow;

  Generation1(this.redBlue, this.yellow);

  factory Generation1.fromJson(Map<String, dynamic> json) =>
      _$Generation1FromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.kebab, includeIfNull: false)
class Generation2 {
  final Sprites crystal;
  final Sprites gold;
  final Sprites silver;

  Generation2(this.crystal, this.gold, this.silver);

  factory Generation2.fromJson(Map<String, dynamic> json) =>
      _$Generation2FromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.kebab, includeIfNull: false)
class Generation3 {
  final Sprites emerald;
  final Sprites fireredLeafgreen;
  final Sprites rubySapphire;

  Generation3(this.emerald, this.fireredLeafgreen, this.rubySapphire);

  factory Generation3.fromJson(Map<String, dynamic> json) =>
      _$Generation3FromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.kebab, includeIfNull: false)
class Generation4 {
  final Sprites diamondPearl;
  final Sprites heartgoldSoulsilver;
  final Sprites platinum;

  Generation4(this.diamondPearl, this.heartgoldSoulsilver, this.platinum);

  factory Generation4.fromJson(Map<String, dynamic> json) =>
      _$Generation4FromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.kebab, includeIfNull: false)
class Generation5 {
  final Sprites blackWhite;

  Generation5(this.blackWhite);

  factory Generation5.fromJson(Map<String, dynamic> json) =>
      _$Generation5FromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.kebab, includeIfNull: false)
class Generation6 {
  final Sprites omegarubyAlphasapphire;
  final Sprites xY;

  Generation6(this.omegarubyAlphasapphire, this.xY);

  factory Generation6.fromJson(Map<String, dynamic> json) =>
      _$Generation6FromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.kebab, includeIfNull: false)
class Generation7 {
  final Sprites icons;
  final Sprites ultraSunUltraMoon;

  Generation7(this.icons, this.ultraSunUltraMoon);

  factory Generation7.fromJson(Map<String, dynamic> json) =>
      _$Generation7FromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.kebab, includeIfNull: false)
class Generation8 {
  final Sprites icons;

  Generation8(this.icons);

  factory Generation8.fromJson(Map<String, dynamic> json) =>
      _$Generation8FromJson(json);
}

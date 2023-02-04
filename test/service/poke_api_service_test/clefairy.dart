import 'package:pokedex/models/item_link.dart';
import 'package:pokedex/models/pokemon_details/ability/ability.dart';
import 'package:pokedex/models/pokemon_details/game_indices/game_indices.dart';
import 'package:pokedex/models/pokemon_details/held_items/held_item.dart';
import 'package:pokedex/models/pokemon_details/held_items/version_details.dart';
import 'package:pokedex/models/pokemon_details/moves/move.dart';
import 'package:pokedex/models/pokemon_details/moves/version_group_details.dart';
import 'package:pokedex/models/pokemon_details/past_type/type.dart';
import 'package:pokedex/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex/models/pokemon_details/sprites/generations/generation.dart';
import 'package:pokedex/models/pokemon_details/sprites/other_sprites.dart';
import 'package:pokedex/models/pokemon_details/sprites/sprites.dart';
import 'package:pokedex/models/pokemon_details/sprites/versions_sprites.dart';
import 'package:pokedex/models/pokemon_details/stats/stats.dart';
import 'package:pokedex/models/pokemon_details/types/type.dart';

PokemonDetails clefairyPokemon = PokemonDetails(
  35,
  "clefairy",
  113,
  6,
  true,
  56,
  75,
  "/api/v2/pokemon/35/encounters",
  [
    Ability(true, 3,
        ItemLink('friend-guard', 'https://pokeapi.co/api/v2/ability/132/'))
  ],
  [ItemLink('clefairy', 'https://pokeapi.co/api/v2/pokemon-form/35/')],
  [
    GameIndices(
      35,
      ItemLink('white-2', 'https://pokeapi.co/api/v2/version/22/'),
    )
  ],
  [
    HeldItem(
      ItemLink("moon-stone", "https://pokeapi.co/api/v2/item/81/"),
      [
        VersionDetail(
          5,
          ItemLink('ruby', 'https://pokeapi.co/api/v2/version/7/'),
        )
      ],
    )
  ],
  [
    Move(
      ItemLink('pound', "https://pokeapi.co/api/v2/move/1/"),
      [
        VersionGroupDetails(
          1,
          ItemLink("red-blue", "https://pokeapi.co/api/v2/version-group/1/"),
          ItemLink(
              "level-up", "https://pokeapi.co/api/v2/move-learn-method/1/"),
        )
      ],
    )
  ],
  ItemLink("clefairy", "https://pokeapi.co/api/v2/pokemon-species/35/"),
  [Stat(35, 0, ItemLink("speed", "https://pokeapi.co/api/v2/stat/6/"))],
  [PokemonType(1, ItemLink("fairy", "https://pokeapi.co/api/v2/type/18/"))],
  [
    PastType(
      ItemLink("generation-v", "https://pokeapi.co/api/v2/generation/5/"),
      [
        PokemonType(
          1,
          ItemLink("normal", "https://pokeapi.co/api/v2/type/1/"),
        ),
      ],
    )
  ],
  Sprites(
    frontDefault:
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/35.png",
    frontFemale: null,
    frontShiny:
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/shiny/35.png",
    frontShinyFemale: null,
    backDefault:
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/35.png",
    backFemale: null,
    backShiny:
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/35.png",
    backShinyFemale: null,
    other: OtherSprites(
      Sprites(
        frontDefault:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/35.svg",
      ),
      Sprites(
          frontDefault:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/35.png",
          frontShiny:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/35.png"),
      Sprites(
        frontDefault:
            "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/35.png",
      ),
    ),
    versions: PreviousVersionSprites(
      Generation1(
        Sprites(
          backDefault:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/back/35.png",
          backGray:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/back/gray/35.png",
          frontDefault:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/35.png",
          frontGray:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/gray/35.png",
        ),
        Sprites(
          backDefault:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/back/35.png",
          backGray:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/back/gray/35.png",
          frontDefault:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/35.png",
          frontGray:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/gray/35.png",
        ),
      ),
      Generation2(
        Sprites(
            backDefault:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/back/35.png",
            backShiny:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/back/shiny/35.png",
            frontDefault:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/35.png",
            frontShiny:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/shiny/35.png"),
        Sprites(
            backDefault:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/back/35.png",
            backShiny:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/back/shiny/35.png",
            frontDefault:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/35.png",
            frontShiny:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/shiny/35.png"),
        Sprites(
            backDefault:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/back/35.png",
            backShiny:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/back/shiny/35.png",
            frontDefault:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/35.png",
            frontShiny:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/shiny/35.png"),
      ),
      Generation3(
        Sprites(
            frontDefault:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/emerald/35.png",
            frontShiny:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/emerald/shiny/35.png"),
        Sprites(
            backDefault:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/back/35.png",
            backShiny:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/back/shiny/35.png",
            frontDefault:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/35.png",
            frontShiny:
                "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/shiny/35.png"),
        Sprites(
          backDefault:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/back/35.png",
          backShiny:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/back/shiny/35.png",
          frontDefault:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/35.png",
          frontShiny:
              "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/shiny/35.png",
        ),
      ),
      Generation4(
        Sprites(),
        Sprites(),
        Sprites(),
      ),
      Generation5(
        Sprites(),
      ),
      Generation6(
        Sprites(),
        Sprites(),
      ),
      Generation7(
        Sprites(),
        Sprites(),
      ),
      Generation8(
        Sprites(),
      ),
    ),
  ),
);


//       "generation-iv": {
//         "diamond-pearl": {
//           "back_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/back/35.png",
//           "back_female": null,
//           "back_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/back/shiny/35.png",
//           "back_shiny_female": null,
//           "front_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/35.png",
//           "front_female": null,
//           "front_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/shiny/35.png",
//           "front_shiny_female": null
//         },
//         "heartgold-soulsilver": {
//           "back_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/back/35.png",
//           "back_female": null,
//           "back_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/back/shiny/35.png",
//           "back_shiny_female": null,
//           "front_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/35.png",
//           "front_female": null,
//           "front_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/shiny/35.png",
//           "front_shiny_female": null
//         },
//         "platinum": {
//           "back_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/back/35.png",
//           "back_female": null,
//           "back_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/back/shiny/35.png",
//           "back_shiny_female": null,
//           "front_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/35.png",
//           "front_female": null,
//           "front_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/shiny/35.png",
//           "front_shiny_female": null
//         }
//       },
//       "generation-v": {
//         "black-white": {
//           "animated": {
//             "back_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/35.gif",
//             "back_female": null,
//             "back_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/shiny/35.gif",
//             "back_shiny_female": null,
//             "front_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/35.gif",
//             "front_female": null,
//             "front_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/shiny/35.gif",
//             "front_shiny_female": null
//           },
//           "back_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/back/35.png",
//           "back_female": null,
//           "back_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/back/shiny/35.png",
//           "back_shiny_female": null,
//           "front_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/35.png",
//           "front_female": null,
//           "front_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/shiny/35.png",
//           "front_shiny_female": null
//         }
//       },
//       "generation-vi": {
//         "omegaruby-alphasapphire": {
//           "front_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/omegaruby-alphasapphire/35.png",
//           "front_female": null,
//           "front_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/omegaruby-alphasapphire/shiny/35.png",
//           "front_shiny_female": null
//         },
//         "x-y": {
//           "front_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/x-y/35.png",
//           "front_female": null,
//           "front_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/x-y/shiny/35.png",
//           "front_shiny_female": null
//         }
//       },
//       "generation-vii": {
//         "icons": {
//           "front_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/icons/35.png",
//           "front_female": null
//         },
//         "ultra-sun-ultra-moon": {
//           "front_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/ultra-sun-ultra-moon/35.png",
//           "front_female": null,
//           "front_shiny": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/ultra-sun-ultra-moon/shiny/35.png",
//           "front_shiny_female": null
//         }
//       },
//       "generation-viii": {
//         "icons": {
//           "front_default": "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-viii/icons/35.png",
//           "front_female": null
//         }
//       }
import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex/utils/colors.dart';
import 'package:pokedex/utils/padding.dart';
import 'package:pokedex/utils/string.dart';

class Stats extends StatelessWidget {
  final PokemonDetails pokemonDetails;
  const Stats({super.key, required this.pokemonDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: UIPadding.m),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: buildDataTable(context),
      ),
    );
  }

  DataTable buildDataTable(BuildContext context) {
    final double width = MediaQuery.of(context).size.width / 5;
    return DataTable(
      columnSpacing: UIPadding.l,
      columns: [
        DataColumn(
          label: SizedBox(
            width: width,
            child: const Text(
              'Name',
            ),
          ),
        ),
        DataColumn(
          label: SizedBox(
              width: width,
              child: const Text(
                'Value',
              )),
        ),
        DataColumn(
          label: SizedBox(
              width: width,
              child: const Text(
                'Percentage',
              )),
        ),
      ],
      rows: pokemonDetails.stats!.map(
        (stats) {
          String cleanLabel = stats.stat.name.capitalize().replaceAll('-', ' ');
          double statPercent = stats.baseStat / 255;
          Color barColor = PokemonColors
              .pokemonTypeColors[pokemonDetails.types!.first.type.name]!;
          return DataRow(
            cells: [
              DataCell(
                SizedBox(
                  width: width,
                  child: Text(
                    "$cleanLabel: ",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.grey),
                  ),
                ),
              ),
              DataCell(
                SizedBox(
                  width: width,
                  child: Text(
                    stats.baseStat.toString(),
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.grey),
                  ),
                ),
              ),
              DataCell(
                Container(
                  width: width,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        18,
                      ),
                    ),
                    child: LinearProgressIndicator(
                      value: statPercent,
                      valueColor: AlwaysStoppedAnimation(barColor),
                      backgroundColor: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ).toList(),
    );
  }

  Widget buildRow(BuildContext context, String label, dynamic value) {
    String cleanLabel = label.capitalize().replaceAll('-', ' ');
    return Container(
      margin: EdgeInsets.symmetric(vertical: UIPadding.xs),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 4,
            child: Text(
              "$cleanLabel: ",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.grey),
            ),
          ),
          Expanded(
            flex: 6,
            child: Text(
              value.toString().capitalize(),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}

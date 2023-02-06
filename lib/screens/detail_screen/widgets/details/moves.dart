import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_details/pokemon_details.dart';
import 'package:pokedex/utils/padding.dart';
import 'package:pokedex/utils/string.dart';

class Moves extends StatelessWidget {
  final PokemonDetails pokemonDetails;
  const Moves({super.key, required this.pokemonDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: UIPadding.m),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: buildDataTable(context),
        ),
      ),
    );
  }

  DataTable buildDataTable(BuildContext context) {
    return DataTable(
      columnSpacing: UIPadding.l,
      columns: const [
        DataColumn(
          label: Text('Name'),
        ),
        DataColumn(
          label: Text('Learned at'),
        ),
        DataColumn(
          label: Text('Method'),
        ),
      ],
      rows: pokemonDetails.moves!.map(
        (move) {
          String cleanLabel = move.move.name.capitalize().replaceAll('-', ' ');
          return DataRow(
            cells: [
              DataCell(
                Text(
                  "$cleanLabel: ",
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.grey),
                ),
              ),
              DataCell(
                Text(
                  "lvl${move.versionGroupDetails.first.levelLearnedAt}",
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.grey),
                ),
              ),
              DataCell(
                Text(
                  move.versionGroupDetails.first.moveLearnMethod.name,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.grey),
                ),
              )
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

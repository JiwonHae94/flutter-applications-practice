import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../domain/entities/color_item.dart';

class ColorTile extends StatelessWidget {
  const ColorTile({required this.colorItem, super.key});

  final ColorItem colorItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: AspectRatio(
          aspectRatio: 1,
          child: Container(
            color: colorItem.color,
          ),
        ),
        title: Text(colorItem.name, style: Theme.of(context).textTheme.headline6),
        trailing: Text('\$ ${(colorItem.price / 100).toStringAsFixed(2)}'),
      ),
    );
  }
}

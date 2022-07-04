import '../../../domain/entities/color_item.dart';
import 'package:flutter/material.dart';

class ColorAPI {
  Future<List<ColorItem>> fetchColors(int numColors) async {
    return List.generate(
        numColors,
        (index) => ColorItem(
            color: Colors.primaries[index % Colors.primaries.length],
            name: "Color#$numColors",
            price: 50 + (index * 42) % 200));
  }
}

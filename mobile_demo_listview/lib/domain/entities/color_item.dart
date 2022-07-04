import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ColorItem extends Equatable{
  const ColorItem({required this.color, required this.name, required this.price});

  final Color color;
  final String name;
  final int price;

  @override
  List<Object> get props => [color];
}
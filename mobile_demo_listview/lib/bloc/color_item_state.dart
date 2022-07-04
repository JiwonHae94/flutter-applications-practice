import 'package:mobile_demo_listview/domain/entities/color_item.dart';

class ColorItemState {
  ColorItemState({required this.items});

  // create empty list as default list
  factory ColorItemState.createDefault() => ColorItemState(items: []);

  late List<ColorItem> items;

}
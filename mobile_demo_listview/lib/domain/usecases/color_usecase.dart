import '../entities/color_item.dart';

class ColorUsecase{
  final List<ColorItem> _colors = [];

  List<ColorItem> get items => _colors;

  void add(ColorItem item){
    _colors.add(item);
  }

  void remove(ColorItem item){
    _colors.remove(item);
  }

  void generateDefault(){

  }

}
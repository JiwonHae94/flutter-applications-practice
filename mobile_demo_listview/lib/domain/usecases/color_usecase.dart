import '../entities/color.dart';

class ColorUsecase{
  final List<Color> _colors = [];

  List<Color> get items => _colors;

  void add(Color item){
    _colors.add(item);
  }

  void remove(Color item){
    _colors.remove(item);
  }


}
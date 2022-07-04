
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_demo_listview/bloc/color_item_state.dart';
import 'package:mobile_demo_listview/domain/usecases/color_usecase.dart';

import '../domain/entities/color_item.dart';

class ColorItemCubit extends Cubit<List<ColorItemState>>{
  ColorItemCubit({required this.usecase}) : super([]);

  ColorUsecase usecase;

  void addColor(ColorItem color){
    usecase.add(color);
  }

  void removeColor(ColorItem color){
    usecase.remove(color);
  }
}
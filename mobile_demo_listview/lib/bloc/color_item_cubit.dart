
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_demo_listview/bloc/color_item_state.dart';
import 'package:mobile_demo_listview/domain/usecases/color_usecase.dart';

import '../domain/entities/color.dart';

class ColorItemCubit extends Cubit<List<ColorItemState>>{
  ColorItemCubit({required this.usecase}) : super([]);

  ColorUsecase usecase;

  void addColor(Color color){
    usecase.add(color);
  }

  void removeColor(Color color){
    usecase.remove(color);
  }
}
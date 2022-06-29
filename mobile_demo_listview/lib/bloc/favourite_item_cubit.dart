import 'package:bloc/bloc.dart';
import 'package:mobile_demo_listview/bloc/favourite_item_state.dart';
import 'package:mobile_demo_listview/domain/entities/favourite.dart';

import '../domain/usecases/favourite_usescase.dart';

class FavouriteItemCubit extends Cubit<List<Favourite>>{
  FavouriteItemCubit({required this.usecase}) : super(List.empty());

  final FavoriteItemUseCase usecase;

  void addItem(Favourite item){
    usecase.add(item);
    emit(usecase.items);
  }

  void removeItem(Favourite item){
    usecase.remove(item);
    emit(usecase.items);
  }

}
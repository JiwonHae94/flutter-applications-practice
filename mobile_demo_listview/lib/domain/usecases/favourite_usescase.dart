
import 'package:mobile_demo_listview/domain/entities/favourite.dart';

class FavoriteItemUseCases{
  final List<Favourite> _favouriteItems = [];

  List<Favourite> get items => _favouriteItems;

  void add(Favourite item){
    _favouriteItems.add(item);
  }

  void remove(Favourite item){
    _favouriteItems.remove(item);
  }
}
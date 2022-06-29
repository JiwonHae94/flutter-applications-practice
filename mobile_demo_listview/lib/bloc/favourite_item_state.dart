import 'package:mobile_demo_listview/domain/entities/favourite.dart';

class FavouriteItemState {
  FavouriteItemState({required this.items});

  // create empty list as default list
  factory FavouriteItemState.createDefault() => FavouriteItemState(items: []);

  late List<Favourite> items;
}

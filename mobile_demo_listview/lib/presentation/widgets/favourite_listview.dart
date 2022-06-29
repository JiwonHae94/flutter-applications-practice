import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_demo_listview/bloc/favourite_item_cubit.dart';
import 'package:mobile_demo_listview/presentation/widgets/favourite_tile.dart';

class FavouriteListView extends StatelessWidget {
  const FavouriteListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favouriteItems = context.watch<FavouriteItemCubit>();
    final itemState = favouriteItems.state;

    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, i) {
          return FavouriteTile(itemState.elementAt(i));
        },
        itemCount: itemState.length,
      )
    );
  }
}

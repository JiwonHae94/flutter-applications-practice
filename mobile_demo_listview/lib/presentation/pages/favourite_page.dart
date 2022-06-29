import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_demo_listview/bloc/favourite_item_cubit.dart';
import 'package:mobile_demo_listview/presentation/widgets/favourite_listview.dart';

import '../../domain/usecases/favourite_usescase.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Favourite Items")),
        body: BlocProvider(
            create: (_) => FavouriteItemCubit(usecase: FavoriteItemUseCase()),
            child: const FavouriteListView()
        )
    );
  }
}

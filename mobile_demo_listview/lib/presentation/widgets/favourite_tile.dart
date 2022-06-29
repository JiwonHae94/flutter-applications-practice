import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_demo_listview/domain/entities/favourite.dart';

class FavouriteTile extends StatelessWidget {
  const FavouriteTile(this._favourite);

  final Favourite _favourite;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          ListTile(
              leading: Hero(
                tag: _favourite.id,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(_favourite.imageURL ?? ""),
                ),
              ),
              title: Text(_favourite.label),
              subtitle: Text(_favourite.description ?? "")
          ),
          Divider(
            thickness: 2.0,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/favorite_provider.dart';
import 'package:flutter_provider/screens/addfavourite.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Favorite App"),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddFavoriteScreen()));
                },
                icon: Icon(Icons.favorite))
          ],
        ),
        body: ListView.builder(
          itemCount: 101,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                if (provider.favoriteList.contains(index)) {
                  provider.removeItem(index);
                } else {
                  provider.addItem(index);
                }
              },
              title: Text("Item" + index.toString()),
              trailing: Icon(
                provider.favoriteList.contains(index)
                    ? Icons.favorite
                    : Icons.favorite_outline,
                color: Colors.black,
              ),
            );
          },
        ));
  }
}

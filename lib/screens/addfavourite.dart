import 'package:flutter/material.dart';
import 'package:flutter_provider/favoriteapp/favorite_screen.dart';
import 'package:flutter_provider/provider/favorite_provider.dart';
import 'package:provider/provider.dart';

class AddFavoriteScreen extends StatefulWidget {
  const AddFavoriteScreen({super.key});

  @override
  State<AddFavoriteScreen> createState() => _AddFavoriteScreenState();
}

class _AddFavoriteScreenState extends State<AddFavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          //automaticallyImplyLeading: false,
          title: Text("Favorite App"),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.favorite))],
        ),
        body: ListView.builder(
          itemCount: provider.favoriteList.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                provider.removeItem(index);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavoriteScreen()));
              },
              title: Text("Item" + index.toString()),
              trailing: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
            );
          },
        ));
  }
}

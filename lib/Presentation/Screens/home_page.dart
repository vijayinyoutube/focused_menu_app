import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';

import '../Components/appbar.dart';
import '../Declarations/Constants/image_files.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(appBarTitle: 'Focused Menu'),
      body: Builder(
        builder: (context) {
          return GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(20),
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: [
              buildListItems(context, 0),
              buildListItems(context, 1),
              buildListItems(context, 2),
              buildListItems(context, 3),
              buildListItems(context, 4),
              buildListItems(context, 5),
              buildListItems(context, 6),
              buildListItems(context, 0),
            ],
          );
        },
      ),
    );
  }
}

Widget buildListItems(BuildContext context, int index) => FocusedMenuHolder(
      menuWidth: MediaQuery.of(context).size.width * 0.50,
      openWithTap: true,
      menuItems: <FocusedMenuItem>[
        FocusedMenuItem(
            title: const Text("Open"),
            trailingIcon: const Icon(Icons.open_in_new),
            onPressed: () {}),
        FocusedMenuItem(
            title: const Text("Share"),
            trailingIcon: const Icon(Icons.share),
            onPressed: () {}),
        FocusedMenuItem(
            title: const Text("Favorite"),
            trailingIcon: const Icon(Icons.favorite_border),
            onPressed: () {}),
        FocusedMenuItem(
          backgroundColor: Colors.red,
            title: const Text(
              "Delete",
              style: TextStyle(color: Colors.white),
            ),
            trailingIcon: const Icon(Icons.delete, color: Colors.white),
            onPressed: () {}),
      ],
      onPressed: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          imageFiles[index],
          fit: BoxFit.fill,
        ),
      ),
    );

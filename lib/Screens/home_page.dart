import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.pink,
        title: const Text(
          'Focused Menu',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.5,
      ),
      body: Builder(
        builder: (_) {
          return Wrap(
            children: [
              buildListItems(context),
              buildListItems(context),
              buildListItems(context),
            ],
          );
        },
      ),
    );
  }
}

Widget buildListItems(BuildContext context) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: 250,
        color: Colors.red,
        child: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_ums6Rp3LJDJZ4ClL81ZAa1x7Jos8YVCdKg&usqp=CAU',
          fit: BoxFit.fill,
        ),
      ),
    );

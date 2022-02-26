import 'package:flutter/material.dart';

class MyGrids extends StatelessWidget {
  const MyGrids({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Grid1(),
    );
  }
}

final List<Widget> recipes = [
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpzO0gandwcNArwWUkx53LCk_WIcrIkvIVYw&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTOncgazUTvqYiC0w9z2Kbu9rIJWNkIvJ3LQ&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1qfOY3rfYS2ZR--6NCghgHy_5vgdz1GYdig&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO5n_4yJLfhkI3THsMF6BeLqZLRidxKY6tvg&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUYOobMo4dO0vHuOOZIRvJ-01ehR-sTrMXaA&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuOL1zxJ0vy0vYWIV-_39FREfe187CoAZ4rA&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8122HBnMR0UbAN_mP-Dp6MeeFV37zHQrhNg&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGL5fc-vEW_dYiPiWcvf54WGr5ekVrcxZI2g&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-qiA9IPfrexwN7z_wKyS6t3U_RitagTYtBA&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVnx8gE_vbaCbmHnRLeZn7jN6x2N2H2XgA2Q&usqp=CAU"),
];

class Gridviews extends StatelessWidget {
  const Gridviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = "veg recipes";

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GridView.builder(
        itemBuilder: (
          BuildContext context,
          int index,
        ) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: recipes,
          );
        },
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: recipes.length,
      ),
    );
  }
}

class Grid extends StatelessWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = "veg recipes";

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(15),
        crossAxisSpacing: 4,
        mainAxisSpacing: 8,
        crossAxisCount: 2,
        children: recipes,
      ),
    );
  }
}

class Grid1 extends StatelessWidget {
  const Grid1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = "veg recipes";

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 200,
          children: recipes,
          primary: false,
          padding: EdgeInsets.all(15),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ));
  }
}

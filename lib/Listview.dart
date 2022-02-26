import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Listviews(),
      debugShowCheckedModeBanner: false,
    );
  }
}

final List<Image> images = [
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3NH3PHQZ2td1E85aoPRUfo4zBto66mk7VTw&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTcAbeOhAH9VrVohoY2fx4s543PCyWSQE9w5Q&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuxOjwhkig8YJRXIzAhULk_5Tf0DKEXB_E-w&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9OMUiP70R0EftMZbu0lqA3a84WvGBFkkP8Q&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS18g8cYtI3CEzbM8Inr_zO5mDrx_gyiKu_9Q&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCug5dnjP2PDitUuysdJQ-g_bzWvXVI4No5g&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwDPbQpIUZcAEIroCOwbvrF1_o7sPSZnfQ6Q&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-6Uhv5h3TQzuPOG3XPKGq3A-gWCw80m2GNA&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUMl0IW9dQ1LQbrcB7HykgbATFfDkonpFegg&usqp=CAU"),
  Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1Ez2njBa1CJkWTQ-XPJdURzD4RaSwir7DuQ&usqp=CAU"),
];

class Listviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const title = "Sweets";
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView(
        addRepaintBoundaries: true,
        addAutomaticKeepAlives: true,
        padding: EdgeInsets.all(90),
        children: images,
      ),
    );
  }
}

class Builds extends StatelessWidget {
  const Builds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text("sweets"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(90),
        itemCount: images.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: images,
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Layouts extends StatelessWidget {
  const Layouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Layout(),
      title: "Recipe",
      debugShowCheckedModeBanner: false,
    );
  }
}

class Layout extends StatelessWidget {
  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(
        Icons.star,
        color: Colors.pink[900],
      ),
      Icon(
        Icons.star,
        color: Colors.pink[900],
      ),
      Icon(
        Icons.star,
        color: Colors.pink[900],
      ),
      Icon(
        Icons.star,
        color: Colors.pink[900],
      ),
      Icon(
        Icons.star,
        color: Colors.pink[900],
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[50],
      height: 500,
      width: 35,
      child: Center(
        child: Column(
          children: [
            Image.network(
              "https://annabanana.co/wp-content/uploads/2019/04/Classic-Strawberry-Pavlova-1.jpg",
              fit: BoxFit.cover,
              scale: 5,
            ),
            Text(
              "Strawberry Pavlova",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue[900],
                  decoration: TextDecoration.none),
            ),
            Text(
              """
     Palvova is the merguine based dessert named after the russian ballerina anna pavlova.
     Features a crisp crust and soft.Light inside ,topped with fruit and whipped cream. """,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink[900],
                  decoration: TextDecoration.none),
              textAlign: TextAlign.justify,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  stars,
                  Text(
                    "170 reviews",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.pink[900],
                      fontWeight: FontWeight.w800,
                      fontFamily: "roboto",
                      letterSpacing: 0.5,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.note_add,
                      color: Colors.pink[900],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Prep.",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: Colors.pink[900],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "25 Min.",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: Colors.pink[900],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.watch,
                      color: Colors.pink[900],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Time",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: Colors.pink[900],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "1 Hr",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: Colors.pink[900],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.food_bank,
                      color: Colors.pink[900],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Feeds",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: Colors.pink[900],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "4-6",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: Colors.pink[900],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

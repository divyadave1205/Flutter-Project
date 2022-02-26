import 'package:flutter/material.dart';

class MyTutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tutorial(),
    );
  }
}

class Tutorial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue[100],
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              expandedHeight: 100.0,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                stretchModes: [
                  StretchMode.blurBackground,
                  StretchMode.fadeTitle,
                  StretchMode.zoomBackground
                ],
                centerTitle: true,
                title: Text("Visit This Place"),
                background: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      "https://th.bing.com/th/id/OIP.FYCn0vTSQs0hFKYtUUdbFQHaE8?w=248&h=180&c=7&o=5&pid=1.7",
                      fit: BoxFit.contain,
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(7.0, 9.0),
                          end: Alignment.center,
                          colors: [
                            Color(0x60000000),
                            Color(0x00000000),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed(
                [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              "Sarthana Nature Park",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue[900],
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "jakatnaka ,surat",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blue[900],
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.blue[900],
                              ),
                              Text(
                                "41",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue[900],
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.blue[900],
                              ),
                              Text(
                                "CALL",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue[900],
                                  decoration: TextDecoration.none,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.near_me,
                                color: Colors.blue[900],
                              ),
                              Text(
                                "ROUTE",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue[900],
                                  decoration: TextDecoration.none,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.share,
                                color: Colors.blue[900],
                              ),
                              Text(
                                "SHARE",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue[900],
                                  decoration: TextDecoration.none,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [],
                  ),
                  Text(
                    """
      -->Sarthana nature park is the one of the amazing place of surat.
      
      -->you can go there with you full family and enjoy for a whole day.
      
      -->if you are nature lover than it is a best place for you.
      -->Sarthana nature park is the one of the amazing place of surat.
      
      -->you can go there with you full family and enjoy for a whole day.
      
      -->if you are nature lover than it is a best place for you.
      -->Sarthana nature park is the one of the amazing place of surat.
      
      -->you can go there with you full family and enjoy for a whole day.
      
      -->if you are nature lover than it is a best place for you.
      -->Sarthana nature park is the one of the amazing place of surat.
      
      -->you can go there with you full family and enjoy for a whole day.
      
      -->if you are nature lover than it is a best place for you.
      -->Sarthana nature park is the one of the amazing place of surat.
      
      -->you can go there with you full family and enjoy for a whole day.
      
      -->if you are nature lover than it is a best place for you.
      -->Sarthana nature park is the one of the amazing place of surat.
      
      -->you can go there with you full family and enjoy for a whole day.
      
      -->if you are nature lover than it is a best place for you.
       """,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue[900],
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

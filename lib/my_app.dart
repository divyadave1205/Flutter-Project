import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final fieldTexts = TextEditingController();
  void clearText() {
    fieldTexts.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('S.T. Bus Stand'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.airplane_ticket),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is your Booked Tickets')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('All Routes'),
                    ),
                    body: Center(
                        child: Column(
                      children: <Widget>[
                        Image.network(
                          'https://th.bing.com/th/id/OIP.bW1ks2Mcyydj9qXDKRkN6gHaE5?w=244&h=180&c=7&o=5&pid=1.7',
                          fit: BoxFit.contain,
                        ),
                        Text(
                          'These are all available routes',
                          style: TextStyle(fontSize: 24),
                        ),
                        ListTile(
                          leading: Icon(Icons.bus_alert_sharp),
                          title: Text("Ahemdabad to Junagadh"),
                          trailing: IconButton(
                            icon: const Icon(Icons.navigate_next),
                            tooltip: "Book this ticket",
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute<void>(
                                  builder: (BuildContext context) {
                                return Scaffold(
                                  appBar: AppBar(
                                    title: const Text("Ahemdabad to Junagadh"),
                                  ),
                                  body: Column(
                                    children: <Widget>[
                                      Text(
                                        "Book your ticket from here",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Image.network(
                                        'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202008/londel.jpeg?gpbctu1f7afh.dBf15gkuEFvySVaszRN&size=770:433',
                                        fit: BoxFit.contain,
                                      ),
                                      Text("\n\n"),
                                      Text(
                                        """
Bus No.  :-1342
Bus Time :- 7:00 AM,
Ticket Price :- 500/-,
                                          """,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute<void>(
                                                      builder: (BuildContext
                                                          context) {
                                                return Scaffold(
                                                  appBar: AppBar(
                                                    title:
                                                        Text("Fill This Info."),
                                                  ),
                                                  body: Column(
                                                    children: [
                                                      TextField(
                                                        decoration: InputDecoration(
                                                            hintText:
                                                                "Enter Your Name",
                                                            focusColor:
                                                                Colors.pink),
                                                        controller: fieldTexts,
                                                      ),
                                                      TextField(
                                                        decoration: InputDecoration(
                                                            hintText:
                                                                "Enter Your Phone No.",
                                                            focusColor:
                                                                Colors.pink),
                                                        controller: fieldTexts,
                                                      ),
                                                      TextField(
                                                        decoration: InputDecoration(
                                                            hintText:
                                                                "Enter Your Email Address",
                                                            focusColor:
                                                                Colors.pink),
                                                        controller: fieldTexts,
                                                      ),
                                                      ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute<
                                                                      void>(
                                                                  builder:
                                                                      (BuildContext
                                                                          context) {
                                                            return Scaffold(
                                                              appBar: AppBar(
                                                                title: Text(
                                                                    "See This Info."),
                                                              ),
                                                              body: TextField(),
                                                            );
                                                          }));
                                                        },
                                                        child: Text(
                                                            "Add To Choice"),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              }));
                                            },
                                            child: Text("BOOK"),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute<void>(
                                                      builder: (BuildContext
                                                          context) {
                                                return Scaffold(
                                                  appBar: AppBar(
                                                    title:
                                                        Text("See This Info."),
                                                  ),
                                                  body: TextField(),
                                                );
                                              }));
                                            },
                                            child: Text("View"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              }));
                            },
                          ),
                          subtitle: Text("""
                          Time: 7:00 AM
                          Ticket Price: 500/-"""),
                        ),
                        ListTile(
                          leading: Icon(Icons.bus_alert_sharp),
                          title: Text('Junagadh to Surat'),
                          trailing: IconButton(
                            icon: const Icon(Icons.navigate_next),
                            tooltip: "Book this ticket",
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute<void>(
                                  builder: (BuildContext context) {
                                return Scaffold(
                                  appBar: AppBar(
                                    title: const Text("Junagadh to Surat"),
                                  ),
                                  body: Column(
                                    children: <Widget>[
                                      Text(
                                        "Book your ticket from here",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Text("\n\n"),
                                      Image.network(
                                        'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202008/londel.jpeg?gpbctu1f7afh.dBf15gkuEFvySVaszRN&size=770:433',
                                        fit: BoxFit.contain,
                                      ),
                                      Text(
                                        """
Bus No.  :-1287
Bus Time :- 9:00 AM,
Ticket Price :- 150/-,
                                          """,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }));
                            },
                          ),
                          subtitle: Text("""
                          Time: 9:00 AM,
                          Ticket Price: 150/-"""),
                        ),
                        ListTile(
                          leading: Icon(Icons.bus_alert_sharp),
                          title: Text('Surat to Vadodra'),
                          trailing: IconButton(
                            icon: const Icon(Icons.navigate_next),
                            tooltip: "Book this ticket",
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute<void>(
                                  builder: (BuildContext context) {
                                return Scaffold(
                                  appBar: AppBar(
                                    title: const Text("Surat to Vadodra"),
                                  ),
                                  body: Column(
                                    children: <Widget>[
                                      Text(
                                        "Book your ticket from here",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Text("\n\n"),
                                      Image.network(
                                        'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202008/londel.jpeg?gpbctu1f7afh.dBf15gkuEFvySVaszRN&size=770:433',
                                        fit: BoxFit.contain,
                                      ),
                                      Text(
                                        """
Bus No.  :-1689
Bus Time :- 12:00 PM,
Ticket Price :- 100/-,
                                          """,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }));
                            },
                          ),
                          subtitle: Text("""
                          Time: 12:00 pM,
                          Ticket Price: 100/-"""),
                        ),
                        ListTile(
                          leading: Icon(Icons.bus_alert_sharp),
                          title: Text('Vadodra to Amreli'),
                          trailing: IconButton(
                            icon: const Icon(Icons.navigate_next),
                            tooltip: "Book this ticket",
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute<void>(
                                  builder: (BuildContext context) {
                                return Scaffold(
                                  appBar: AppBar(
                                    title: const Text("Vadodra to Amreli"),
                                  ),
                                  body: Column(
                                    children: <Widget>[
                                      Text(
                                        "Book your ticket from here",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Text("\n\n"),
                                      Image.network(
                                        'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202008/londel.jpeg?gpbctu1f7afh.dBf15gkuEFvySVaszRN&size=770:433',
                                        fit: BoxFit.contain,
                                      ),
                                      Text(
                                        """
Bus No.  :-1287
Bus Time :- 1:00 PM,
Ticket Price :- 160/-,
                                          """,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }));
                            },
                          ),
                          subtitle: Text("""
                          Time: 1:00 PM,
                          Ticket Price: 160/-"""),
                        ),
                        ListTile(
                          leading: Icon(Icons.bus_alert_sharp),
                          title: Text('Amreli to Bhavnagar'),
                          trailing: IconButton(
                            icon: const Icon(Icons.navigate_next),
                            tooltip: "Book this ticket",
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) {
                                    return Scaffold(
                                      appBar: AppBar(
                                        title:
                                            const Text("Amreli to Bhavnagar"),
                                      ),
                                      body: Column(
                                        children: <Widget>[
                                          Text(
                                            "Book your ticket from here",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Text("\n\n"),
                                          Image.network(
                                            'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202008/londel.jpeg?gpbctu1f7afh.dBf15gkuEFvySVaszRN&size=770:433',
                                            fit: BoxFit.contain,
                                          ),
                                          Text(
                                            """
Bus No.  :-1589
Bus Time :- 3:00 PM,
Ticket Price :- 200/-,
                                          """,
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontStyle: FontStyle.italic,
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                          subtitle: Text("""
                          Time: 3:00 PM,
                          Ticket Price: 200/-"""),
                        ),
                        ListTile(
                          leading: Icon(Icons.bus_alert_sharp),
                          title: Text('Bhavnagar to Ahemdabad'),
                          trailing: IconButton(
                            icon: const Icon(Icons.navigate_next),
                            tooltip: "Book this ticket",
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute<void>(
                                  builder: (BuildContext context) {
                                return Scaffold(
                                  appBar: AppBar(
                                    title: const Text("Bhavnagar to Ahemdabad"),
                                  ),
                                  body: Column(
                                    children: <Widget>[
                                      Text(
                                        "Book your ticket from here",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Text("\n\n"),
                                      Image.network(
                                        'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202008/londel.jpeg?gpbctu1f7afh.dBf15gkuEFvySVaszRN&size=770:433',
                                        fit: BoxFit.contain,
                                      ),
                                      Text(
                                        """
Bus No.  :-1564
Bus Time :- 5:00 PM,
Ticket Price :- 250/-,
                                          """,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }));
                            },
                          ),
                          subtitle: Text("""
                          Time: 5:00 PM,
                          Ticket Price: 250/-"""),
                        ),
                        ListTile(
                          leading: Icon(Icons.bus_alert_sharp),
                          title: Text('Ahemdabad to Bharuch'),
                          trailing: IconButton(
                            icon: const Icon(Icons.navigate_next),
                            tooltip: "Book this ticket",
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute<void>(
                                  builder: (BuildContext context) {
                                return Scaffold(
                                  appBar: AppBar(
                                    title: const Text("Ahemdabad to Bharuch"),
                                  ),
                                  body: Column(
                                    children: <Widget>[
                                      Text(
                                        "Book your ticket from here",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Text("\n\n"),
                                      Image.network(
                                        'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202008/londel.jpeg?gpbctu1f7afh.dBf15gkuEFvySVaszRN&size=770:433',
                                        fit: BoxFit.contain,
                                      ),
                                      Text(
                                        """
Bus No.  :-1098
Bus Time :- 7:00 PM,
Ticket Price :- 200/-,
                                          """,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontStyle: FontStyle.italic,
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }));
                            },
                          ),
                          subtitle: Text("""
                          Time: 7:00 PM,
                          Ticket Price: 200/-"""),
                        ),
                        ListTile(
                          leading: Icon(Icons.bus_alert_sharp),
                          title: Text('Bharuch to Kutchha'),
                          trailing: IconButton(
                            icon: const Icon(Icons.navigate_next),
                            tooltip: "Book this ticket",
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute<void>(
                                  builder: (BuildContext context) {
                                return Scaffold(
                                  appBar: AppBar(
                                    title: const Text("Bharuch to Kutchha"),
                                  ),
                                  body: Center(
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Book your ticket from here",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Text("\n\n"),
                                        Image.network(
                                          'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202008/londel.jpeg?gpbctu1f7afh.dBf15gkuEFvySVaszRN&size=770:433',
                                          fit: BoxFit.contain,
                                        ),
                                        Text(
                                          """
Bus No.  :-1023
Bus Time :- 9:00 PM,
Ticket Price :- 400/-,
                                          """,
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }));
                            },
                          ),
                          subtitle: Text("""
                          Time: 9:00 PM,
                          Ticket Price: 400/-"""),
                        ),
                        ListTile(
                          leading: Icon(Icons.bus_alert_sharp),
                          title: Text('Kutchha to Jamnagar'),
                          trailing: IconButton(
                            icon: const Icon(Icons.navigate_next),
                            tooltip: "Book this ticket",
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute<void>(
                                  builder: (BuildContext context) {
                                return Scaffold(
                                  appBar: AppBar(
                                    title: const Text("Kutchha to Jamnagar"),
                                  ),
                                  body: Center(
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "Book your ticket from here",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        Text("\n\n"),
                                        Image.network(
                                          'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202008/londel.jpeg?gpbctu1f7afh.dBf15gkuEFvySVaszRN&size=770:433',
                                          fit: BoxFit.contain,
                                        ),
                                        Text(
                                          """
Bus No.  :-1768
Bus Time :- 11:00 PM,
Ticket Price :- 250/-,
                                          """,
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontStyle: FontStyle.italic,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }));
                            },
                          ),
                          subtitle: Text("""
                          Time: 11:00 PM,
                          Ticket Price: 250/-"""),
                        ),
                      ],
                    )),
                  );
                },
              ));
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                "Drawer header",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            ListTile(leading: Icon(Icons.message), title: Text("Massages")),
            ListTile(
                leading: Icon(Icons.account_circle), title: Text("Profile")),
            ListTile(leading: Icon(Icons.settings), title: Text("Settings"))
          ],
        ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        slivers: <Widget>[
          SliverAppBar(
            stretch: true,
            onStretchTrigger: () {
              return Future<void>.value();
            },
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const <StretchMode>[
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
              centerTitle: true,
              title: const Text('Ticket Booking'),
              background: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.network(
                    'https://th.bing.com/th/id/OIP.bW1ks2Mcyydj9qXDKRkN6gHaE5?w=244&h=180&c=7&o=5&pid=1.7',
                    fit: BoxFit.contain,
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(7.0, 9.0),
                        end: Alignment.center,
                        colors: <Color>[
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
            delegate: SliverChildListDelegate(
              <Widget>[
                ListTile(
                  title: Text('Next Arriving 5 Buses'),
                ),
                ListTile(
                  leading: Icon(Icons.bus_alert_sharp),
                  title: Text('Ahemdabad to Surat'),
                  trailing: IconButton(
                    icon: const Icon(Icons.navigate_next),
                    tooltip: "Book this ticket",
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: const Text("Ahemdabad to Surat"),
                          ),
                          body: Center(
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "Book your ticket from here",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text("\n\n"),
                                Image.network(
                                  'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202008/londel.jpeg?gpbctu1f7afh.dBf15gkuEFvySVaszRN&size=770:433',
                                  fit: BoxFit.contain,
                                ),
                                Text(
                                  """
Bus No.  :-1345
Bus Time :- 9:00 AM,
Ticket Price :- 150/-,
                                          """,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontStyle: FontStyle.italic,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }));
                    },
                  ),
                  subtitle: Text("""
                  Time: 9:00 AM,
                  Ticket Price: 150/-,"""),
                ),
                ListTile(
                  leading: Icon(Icons.bus_alert_sharp),
                  title: Text('Surat to Vadodra'),
                  trailing: IconButton(
                    icon: const Icon(Icons.navigate_next),
                    tooltip: "Book this ticket",
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: const Text("Surat to Vadodra"),
                          ),
                          body: Column(
                            children: <Widget>[
                              Text(
                                "Book your ticket from here",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text("\n\n"),
                              Image.network(
                                'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202008/londel.jpeg?gpbctu1f7afh.dBf15gkuEFvySVaszRN&size=770:433',
                                fit: BoxFit.contain,
                              ),
                              Text(
                                """
Bus No.  :-1689
Bus Time :- 12:00 PM,
Ticket Price :- 100/-,
                                          """,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        );
                      }));
                    },
                  ),
                  subtitle: Text("""
                  Time: 12:00 PM,
                  Ticket Price: 100/-"""),
                ),
                ListTile(
                  leading: Icon(Icons.bus_alert_sharp),
                  title: Text('Vadodra to Jamnagar'),
                  trailing: IconButton(
                    icon: const Icon(Icons.navigate_next),
                    tooltip: "Book this ticket",
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: const Text("Vadodra to Jamnagar"),
                          ),
                          body: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Book your ticket from here",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text("\n\n"),
                              Image.network(
                                'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202008/londel.jpeg?gpbctu1f7afh.dBf15gkuEFvySVaszRN&size=770:433',
                                fit: BoxFit.contain,
                              ),
                              Text(
                                """
Bus No.  :-1287
Bus Time :- 1:00 PM,
Ticket Price :- 160/-,
                                          """,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        );
                      }));
                    },
                  ),
                  subtitle: Text("""
                  Time: 1:00 PM,
                  Ticket Price: 160/-"""),
                ),
                ListTile(
                  leading: Icon(Icons.bus_alert_sharp),
                  title: Text('Jamnagar to Bhavnagar'),
                  trailing: IconButton(
                    icon: const Icon(Icons.navigate_next),
                    tooltip: "Book this ticket",
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: const Text("Jamnagar to Bhavnagar"),
                          ),
                          body: Column(
                            children: <Widget>[
                              Text(
                                "Book your ticket from here",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text("\n\n"),
                              Image.network(
                                'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202008/londel.jpeg?gpbctu1f7afh.dBf15gkuEFvySVaszRN&size=770:433',
                                fit: BoxFit.contain,
                              ),
                              Text(
                                """
Bus No.  :-1567
Bus Time :- 3:00 PM,
Ticket Price :- 200/-,
                                          """,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        );
                      }));
                    },
                  ),
                  subtitle: Text("""
                  Time: 3:00 PM,
                  Ticket Price: 200/-"""),
                ),
                ListTile(
                  leading: Icon(Icons.bus_alert_sharp),
                  title: Text('Bhavnagar to Ahemdabad'),
                  trailing: IconButton(
                    icon: const Icon(Icons.navigate_next),
                    tooltip: "Book this ticket",
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                        return Scaffold(
                          appBar: AppBar(
                            title: const Text("Bhavnagar to Ahemdabad"),
                          ),
                          body: Column(
                            children: <Widget>[
                              Text(
                                "Book your ticket from here",
                                style: TextStyle(fontSize: 20),
                              ),
                              Text("\n\n"),
                              Image.network(
                                'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202008/londel.jpeg?gpbctu1f7afh.dBf15gkuEFvySVaszRN&size=770:433',
                                fit: BoxFit.contain,
                              ),
                              Text(
                                """
Bus No.  :-1564
Bus Time :- 5:00 PM,
Ticket Price :- 250/-,
                                          """,
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontStyle: FontStyle.italic,
                                ),
                              )
                            ],
                          ),
                        );
                      }));
                    },
                  ),
                  subtitle: Text("""
                  Time: 5:00 PM,
                  Ticket Price: 250/-"""),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Item {
  bool? expanded;
  String? headerItems;
  String? discription;
  Color? colorItems;
  Image? img;
  Item({
    this.colorItems,
    this.discription,
    this.expanded = false,
    this.headerItems,
    this.img,
  });
}

class MyPanel extends StatelessWidget {
  const MyPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Panel(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Panel extends StatefulWidget {
  const Panel({Key? key}) : super(key: key);

  @override
  _PanelState createState() => _PanelState();
}

class _PanelState extends State<Panel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Panel"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: itemData.length,
          itemBuilder: (BuildContext context, int index) {
            return ExpansionPanelList(
              animationDuration: Duration(milliseconds: 1000),
              dividerColor: Colors.red,
              elevation: 1,
              children: [
                ExpansionPanel(
                  body: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ClipOval(
                          child: CircleAvatar(
                            child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_jN-TL9KXIF2wLju3NqLM7IE05LNNVoWTBA&usqp=CAU",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          itemData[index].discription!,
                          style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 15,
                              letterSpacing: 0.3,
                              height: 1.3),
                        ),
                      ],
                    ),
                  ),
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        itemData[index].headerItems!,
                        style: TextStyle(
                          color: itemData[index].colorItems!,
                          fontSize: 18,
                        ),
                      ),
                    );
                  },
                  isExpanded: itemData[index].expanded!,
                )
              ],
              expansionCallback: (int item, bool status) {
                setState(() {
                  itemData[index].expanded = !itemData[index].expanded!;
                });
              },
            );
          },
        ),
      ),
    );
  }
}

List<Item> itemData = <Item>[
  Item(
    headerItems: "Android",
    expanded: false,
    discription: """
             Android is a mobile operating system based on a modified version of the Linux kernel and other open source software,
         designed primarily for touchscreen mobile devices such as smartphones and tablets. 
         ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.
         """,
    colorItems: Colors.green,
    img: Image.network(
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_jN-TL9KXIF2wLju3NqLM7IE05LNNVoWTBA&usqp=CAU",
    ),
  ),
  Item(
    headerItems: "PHP",
    expanded: false,
    discription: """
             Android is a mobile operating system based on a modified version of the Linux kernel and other open source software,
         designed primarily for touchscreen mobile devices such as smartphones and tablets. 
         ... Some well known derivatives include Android TV for televisions and Wear OS for wearables, both developed by Google.
         """,
    colorItems: Colors.blue,
    img: Image.network(
        "data:image/png;base64,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"),
  ),
];

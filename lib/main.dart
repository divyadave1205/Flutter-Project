import 'package:flutter/material.dart';
import 'package:flutter_project/Check_Box.dart';
import 'package:flutter_project/Textfields.dart';
import 'package:flutter_project/aspectRatio.dart';
import 'package:flutter_project/bottomsheet.dart';
import 'package:flutter_project/button.dart';
import 'package:flutter_project/card.dart';
import 'package:flutter_project/chip.dart';
import 'package:flutter_project/container.dart';
import 'package:flutter_project/container_animation.dart';
import 'package:flutter_project/coustomSingleChildLayout.dart';
import 'package:flutter_project/download_button.dart';
import 'package:flutter_project/draggable_card.dart';
import 'package:flutter_project/fade_in_and_out.dart';
import 'package:flutter_project/font_asset.dart';
import 'package:flutter_project/page_navigation.dart';
import 'package:flutter_project/stepper.dart';
import 'package:flutter_project/stream.dart';
import 'package:flutter_project/tabbarView.dart';

void main() {
  runApp(Widgets());
}

class Widgets extends StatelessWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "RobotoMono"),
      debugShowCheckedModeBanner: false,
      home: DownloadButton(
        status: DownloadStatus.notDownloaded,
      ),
    );
  }
}

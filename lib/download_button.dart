import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

enum DownloadStatus {
  notDownloaded,
  fetchingDownload,
  downloading,
  downloaded,
}

class DownloadButton extends StatefulWidget {
  final DownloadStatus status;
  final Duration transitionDuration;
  const DownloadButton(
      {Key? key,
      required this.status,
      this.transitionDuration = const Duration(milliseconds: 500),
      this.onDownload,
      this.onCancel,
      this.onOpen})
      : super(key: key);

  final VoidCallback? onDownload;
  final VoidCallback? onCancel;
  final VoidCallback? onOpen;

  @override
  _DownloadButtonState createState() => _DownloadButtonState();
}

class _DownloadButtonState extends State<DownloadButton> {
  bool get isDownloading => widget.status == DownloadStatus.downloading;
  bool get isFetching => widget.status == DownloadStatus.fetchingDownload;
  bool get isDownloaded => widget.status == DownloadStatus.downloaded;
  late List<DownloadController> downloadControllers;
  @override
  void initState() {
    super.initState();
    downloadControllers = List<DownloadController>.generate(20, (index) {
      return SimulatedDownloadController(
        onOpenDownload: () {},
      );
    });
  }

  void _onOpenDownload() {}
  void onPressed() {
    switch (widget.status) {
      case DownloadStatus.notDownloaded:
        widget.onDownload!();
        break;
      case DownloadStatus.fetchingDownload:
        widget.onDownload!();
        break;
      case DownloadStatus.downloading:
        widget.onCancel!();
        break;
      case DownloadStatus.downloaded:
        widget.onOpen!();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: onPressed,
        child: Center(
          child: Stack(
            children: [
              buildButtonShape(
                child: buildList(),
              ),
              buildDownloadingProgress(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButtonShape({required Widget child}) {
    return AnimatedContainer(
      duration: widget.transitionDuration,
      curve: Curves.ease,
      width: double.infinity,
      decoration: isDownloading || isFetching
          ? ShapeDecoration(
              shape: CircleBorder(),
              color: Colors.white.withOpacity(0),
            )
          : ShapeDecoration(
              shape: StadiumBorder(),
              color: Colors.grey[400],
            ),
      child: child,
    );
  }

  Widget buildDownloadingProgress() {
    return Positioned.fill(
        child: AnimatedOpacity(
      opacity: isDownloading || isFetching ? 1 : 0,
      duration: widget.transitionDuration,
      curve: Curves.ease,
      child: buildProgressIndicator(),
    ));
  }

  Widget buildProgressIndicator() {
    return AspectRatio(
      aspectRatio: 1,
      child: TweenAnimationBuilder(
        duration: Duration(
          milliseconds: 200,
        ),
        tween: Tween(begin: 0, end: buildDownloadingProgress()),
        builder: (context, progress, child) {
          return CircularProgressIndicator(
            backgroundColor:
                isDownloading ? Colors.grey : Colors.white.withOpacity(0),
            valueColor: AlwaysStoppedAnimation(
              Colors.grey[400],
            ),
            strokeWidth: 2,
            value: null,
          );
        },
      ),
    );
  }

  Widget buildList() {
    final String text = isDownloaded ? "OPEN" : "GET";
    final double opacity = isDownloading || isFetching ? 0 : 1;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: AnimatedOpacity(
        duration: widget.transitionDuration,
        opacity: opacity,
        curve: Curves.ease,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.button?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent[400],
              ),
        ),
      ),
    );
  }

  // Widget buildListItem() {}
}

class DemoAppIcon extends StatelessWidget {
  const DemoAppIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

abstract class DownloadController implements ChangeNotifier {}

class SimulatedDownloadController extends DownloadController
    with ChangeNotifier {
  SimulatedDownloadController({
    DownloadStatus downloadStatus = DownloadStatus.notDownloaded,
    double progress = 0,
    required VoidCallback onOpenDownload,
  })  : _downloadStatus = downloadStatus,
        _progress = progress,
        _onOpenDownload = onOpenDownload;
  DownloadStatus _downloadStatus;
  @override
  DownloadStatus get downloadStatus => _downloadStatus;
  double _progress;
  @override
  double get progress => _progress;
  final VoidCallback _onOpenDownload;

  bool isDownloading = false;
  @override
  void startDownload() {
    if (_downloadStatus == DownloadStatus.notDownloaded) {
      doSimulatedDownload();
    }
  }

  @override
  void stopDownload() {
    if (isDownloading) {
      isDownloading = false;
      _downloadStatus = DownloadStatus.notDownloaded;
      _progress = 0;
      notifyListeners();
    }
  }

  @override
  void openDownload() {
    if (downloadStatus == DownloadStatus.downloaded) {
      _onOpenDownload();
    }
  }

  Future<void> doSimulatedDownload() async {
    isDownloading = true;
    _downloadStatus = DownloadStatus.fetchingDownload;
    notifyListeners();
    await Future<void>.delayed(
      const Duration(seconds: 1),
    );
    if (isDownloading) {
      return;
    }
    _downloadStatus = DownloadStatus.downloading;
    notifyListeners();
  }
}

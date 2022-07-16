import 'package:auto_route/auto_route.dart';
import 'package:bavito_mobile_app/ui/pages/delcaration_page/widgets/video.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class VideoPage extends StatefulWidget {
  final String? videoFile;
  const VideoPage({
    Key? key,
    this.videoFile,
  }) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              context.router.pop();
            },
            child: const Icon(
              Icons.arrow_back,
            ),
          ),
          const Video(),
        ],
      ),
    );
  }
}

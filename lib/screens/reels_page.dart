import 'package:flutter/material.dart';

import '../widgets/reels_post.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Stack(
      children: [
        PageView(
          /// [PageView.scrollDirection] defaults to [Axis.horizontal].
          /// Use [Axis.vertical] to scroll vertically.
          scrollDirection: Axis.vertical,
          controller: controller,
          children: <Widget>[
            ReelPost(color: Colors.greenAccent,),
            ReelPost(color: Colors.blueAccent,),
            ReelPost(color: Colors.yellowAccent,),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(
            alignment: Alignment.topRight,
            child: Icon(Icons.camera_alt_outlined),
          ),
        )
      ],
    );
  }
}


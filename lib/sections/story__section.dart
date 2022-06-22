import 'package:flutter/material.dart';

import '../widgets/custom_profile_widget.dart';

class StorySection extends StatelessWidget {
  const StorySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CustomProfileWidget(
              isUser: true, hasStory: false, imageUrl: 'dq.jpg',userName: 'Your story',),
          CustomProfileWidget(imageUrl: 'asifali.jfif',userName: 'Asif Ali',),
          CustomProfileWidget(imageUrl: 'mohanlal.jfif',userName: 'Mohanlal',),
          CustomProfileWidget(imageUrl: 'Mammootty.jfif',userName: 'Mammotty',),
          CustomProfileWidget(imageUrl: 'prithwiraj.jfif',userName: 'PrithwiRaj',),
        ],
      ),
    );
  }
}

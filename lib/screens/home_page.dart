import 'package:flutter/material.dart';
import 'package:instagram_ui/sections/story__section.dart';
import 'package:instagram_ui/widgets/custom_post_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const StorySection(),
        const Divider(thickness: 1,),
        CustomPostWidget(postImageUrl: 'assets/1.jfif', profileImageUrl: 'mohanlal.jfif',userName: 'Mohan Lal',),
        SizedBox(height: 10,),
        CustomPostWidget(postImageUrl: 'assets/2.jpg', profileImageUrl: 'Mammootty.jfif',userName: 'Mammotty',),
      ],
    );
  }
}




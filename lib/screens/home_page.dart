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
        CustomPostWidget(postImageUrl: 'https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-bsnudco08r3igtj44duecnr7m4-20180203230738.Medi.jpeg', profileImageUrl: 'https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-bsnudco08r3igtj44duecnr7m4-20180203230738.Medi.jpeg',userName: 'Dulquer',),
        SizedBox(height: 10,),
        CustomPostWidget(postImageUrl: 'https://images.newindianexpress.com/uploads/user/imagelibrary/2021/9/23/w1200X800/Mammootty_YouTube.jpg', profileImageUrl: 'https://images.newindianexpress.com/uploads/user/imagelibrary/2021/9/23/w1200X800/Mammootty_YouTube.jpg',userName: 'Mammotty',),
        
      ],
    );
  }
}




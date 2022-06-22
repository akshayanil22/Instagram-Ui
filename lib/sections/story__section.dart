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
          CustomProfileWidget(isUser:true,hasStory:false,imageUrl: 'https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-bsnudco08r3igtj44duecnr7m4-20180203230738.Medi.jpeg'),
          CustomProfileWidget(imageUrl: 'https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-bsnudco08r3igtj44duecnr7m4-20180203230738.Medi.jpeg'),
          CustomProfileWidget(imageUrl: 'https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-bsnudco08r3igtj44duecnr7m4-20180203230738.Medi.jpeg'),
          CustomProfileWidget(imageUrl: 'https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-bsnudco08r3igtj44duecnr7m4-20180203230738.Medi.jpeg'),
          CustomProfileWidget(imageUrl: 'https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-bsnudco08r3igtj44duecnr7m4-20180203230738.Medi.jpeg'),
          CustomProfileWidget(imageUrl: 'https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-bsnudco08r3igtj44duecnr7m4-20180203230738.Medi.jpeg'),
          CustomProfileWidget(imageUrl: 'https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-bsnudco08r3igtj44duecnr7m4-20180203230738.Medi.jpeg'),
          CustomProfileWidget(imageUrl: 'https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-bsnudco08r3igtj44duecnr7m4-20180203230738.Medi.jpeg'),

        ],
      ),
    );
  }
}

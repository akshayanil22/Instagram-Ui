import 'package:flutter/material.dart';

import 'custom_profile_widget.dart';

class CustomPostWidget extends StatelessWidget {

  final String userName;
  final String postImageUrl;
  final String profileImageUrl;

  CustomPostWidget({this.userName='UserName',required this.postImageUrl,required this.profileImageUrl});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          CustomProfileWidget(radius: 40,isPost: true,imageUrl: profileImageUrl),
          SizedBox(width: 10,),
          Text(userName),
          Spacer(),
          Icon(Icons.more_vert),
        ],),
        SizedBox(height: 10,),
        Image.network(postImageUrl),
        SizedBox(height: 10,),
        Row(children: [
          Row(
            children: [
              SizedBox(width: 10,),
              Icon(Icons.favorite_border_rounded),
              SizedBox(width: 10,),
              Icon(Icons.messenger_outline),
              SizedBox(width: 10,),
              Icon(Icons.send),
              SizedBox(width: 10,),
            ],
          ),
          Spacer(),
          Icon(Icons.save),
          SizedBox(width: 10,),
        ],),
        SizedBox(height: 10,),
        Container(

          margin: EdgeInsets.only(left: 10),child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('1997 likes'),
            Text('Oneplus There is always a silver lining'),
            Text('View all 14 comments',style: TextStyle(color: Colors.grey),)
          ],
        ),),
        SizedBox(height: 10,),
        Row(
          children: [
            CustomProfileWidget(radius:40,hasStory:false,isPost:true,imageUrl: 'https://s3.ap-southeast-1.amazonaws.com/images.deccanchronicle.com/dc-Cover-bsnudco08r3igtj44duecnr7m4-20180203230738.Medi.jpeg',),
            SizedBox(width: 10,),
            Text('Add a comment...',style: TextStyle(color: Colors.grey),),
            Spacer(),
            Row(children: const [
              Text('❤',style: TextStyle(color: Colors.red,fontSize: 16),),
              SizedBox(width: 10,),
              Text('🙌',style: TextStyle(color: Colors.yellow,fontSize: 16),),
              SizedBox(width: 10,),
              Icon(Icons.add_circle_outline,size: 16,),
              SizedBox(width: 10,),
            ],)
          ],
        ),
        SizedBox(height: 8,),
        Text('   7 days ago',style: TextStyle(color: Colors.grey,fontSize: 10),)
      ],);
  }
}

import 'package:flutter/material.dart';

class CustomProfileWidget extends StatelessWidget {

  final bool isUser;
  final bool hasStory;
  final bool isPost;
  final String imageUrl;
  final String userName;
  final double radius;


  CustomProfileWidget({required this.imageUrl,this.userName='userName',this.isPost=false,this.radius=80,this.isUser=false,this.hasStory=true});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 10,),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  width: radius,
                  height: radius,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(imageUrl),fit: BoxFit.cover),
                      color: Colors.black,
                      border:hasStory? Border.all(color: Colors.pink, width: 3):null,
                      borderRadius: BorderRadius.circular(radius/2)),
                ),
                Positioned(
                  bottom: 3,
                  right: 3,
                  child:isUser? Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black,width: 2)),
                    child: Center(child: Icon(Icons.add,size: 16,)),
                  ):SizedBox(),
                )
              ],
            ),
            isPost?SizedBox():Text('username')
          ],
        ),
      ],
    );
  }
}

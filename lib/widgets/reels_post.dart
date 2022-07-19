import 'package:flutter/material.dart';

class ReelPost extends StatelessWidget {
  final Color color;
  const ReelPost({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: color,
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  CircleAvatar(),
                  SizedBox(width: 10,),
                  Text('Name'),
                  SizedBox(width: 10,),
                  OutlinedButton(onPressed: (){}, child: Text('Follow',style: TextStyle(color: Colors.white),),style: OutlinedButton.styleFrom(side: BorderSide(width: 2,color: Colors.white)),)
                ],),
                SizedBox(height: 10,),
                Text('Caption Text here .... What ever you can type here'),
                SizedBox(height: 10,),
                Text('Music here......'),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.favorite_border),
                SizedBox(height: 10,),
                Text('52.4k'),
                SizedBox(height: 10,),
                Icon(Icons.chat_bubble_outline),
                SizedBox(height: 10,),
                Text('234'),
                SizedBox(height: 10,),
                Icon(Icons.send),
                SizedBox(height: 10,),
                Icon(Icons.bookmark_add_outlined),
                SizedBox(height: 10,),
                Icon(Icons.more_vert),
                SizedBox(height: 10,),
                Container(width: 40,height: 40,color: Colors.white,)
              ],
            ),
          ),
        )
      ],
    );
  }
}
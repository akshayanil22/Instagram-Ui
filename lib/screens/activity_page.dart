import 'package:flutter/material.dart';

import '../widgets/activity_tile.dart';

class ActivityPage extends StatelessWidget {
  const ActivityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12),
            child: Text('This Week',style: TextStyle(fontSize: 16),),
          ),
          ActivityTile(text: 'Asif Ali Started Following you.2d',),
          ActivityTile(text: 'Asif Ali Started Following you.2d',),
          ActivityTile(text: 'Asif Ali Started Following you.2d',),
          ActivityTile(text: 'Asif Ali Started Following you.2d',),
          ActivityTile(text:'Asif Ali liked your Post.4w',isImage: true,),
          ActivityTile(text:'Asif Ali liked your Post.4w',isImage: true,),
          ActivityTile(text:'Asif Ali liked your Post.4w',isImage: true,),
          ActivityTile(text:'Asif Ali liked your Post.4w',isImage: true,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('This Month',style: TextStyle(fontSize: 16),),
          ),
          ActivityTile(text: 'Asif Ali Started Following you.2d',),
          ActivityTile(text: 'Asif Ali Started Following you.2d',),
          ActivityTile(text: 'Asif Ali Started Following you.2d',),
          ActivityTile(text: 'Asif Ali Started Following you.2d',),
          ActivityTile(text:'Asif Ali liked your Post.4w',isImage: true,),
          ActivityTile(text:'Asif Ali liked your Post.4w',isImage: true,),
          ActivityTile(text:'Asif Ali liked your Post.4w',isImage: true,),
          ActivityTile(text:'Asif Ali liked your Post.4w',isImage: true,),
        ],
      ),
    );
  }
}



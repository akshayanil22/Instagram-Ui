import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/custom_profile_widget.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomProfileWidget(
                userName: 'Dulquer Salman',
                hasStory: false,
                imageUrl:
                    'dq.jpg'),
            Column(
              children: [Text('4'), Text('Posts')],
            ),
            Column(
              children: [Text('335'), Text('Followers')],
            ),
            Column(
              children: [Text('286'), Text('Following')],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width * .80,
                child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(color: Colors.white),
                    ))),
            OutlinedButton(
                onPressed: () {},
                child: Icon(
                  Icons.person_add,
                  color: Colors.white,
                ))
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text('Story hilights'),
        SizedBox(
          height: 10,
        ),
        Text(
          'Keep your favorite stories on your profile',
          style: TextStyle(fontSize: 12),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(Icons.add)),
              CircleAvatar(
                radius: 30,
              ),
              CircleAvatar(
                radius: 30,
              ),
              CircleAvatar(
                radius: 30,
              ),
              CircleAvatar(
                radius: 30,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        DefaultTabController(
            length: 2, // length of tabs
            initialIndex: 0,
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
              const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.image)),
                  Tab(icon: Icon(Icons.perm_contact_cal_outlined),),
                ],
              ),
              Container(
                  height: MediaQuery.of(context).size.height - // total height
                      kToolbarHeight - // top AppBar height
                      MediaQuery.of(context).padding.top - // top padding
                      kBottomNavigationBarHeight-kTextTabBarHeight, //height of TabBarView
                  decoration: const BoxDecoration(
                      border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                  ),
                  child: TabBarView(children: <Widget>[
                    GridView.count(
                      padding: EdgeInsets.only(top: 10),
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                      children: [
                        Container(width: MediaQuery.of(context).size.width/3,color: Colors.white,),
                        Container(width: MediaQuery.of(context).size.width/3,color: Colors.white,),
                        Container(width: MediaQuery.of(context).size.width/3,color: Colors.white,),
                        Container(width: MediaQuery.of(context).size.width/3,color: Colors.white,),
                        Container(width: MediaQuery.of(context).size.width/3,color: Colors.white,),
                        Container(width: MediaQuery.of(context).size.width/3,color: Colors.white,),Container(width: MediaQuery.of(context).size.width/3,color: Colors.white,),
                        Container(width: MediaQuery.of(context).size.width/3,color: Colors.white,),
                        Container(width: MediaQuery.of(context).size.width/3,color: Colors.white,),
                        Container(width: MediaQuery.of(context).size.width/3,color: Colors.white,),
                        Container(width: MediaQuery.of(context).size.width/3,color: Colors.white,),
                        Container(width: MediaQuery.of(context).size.width/3,color: Colors.white,),Container(width: MediaQuery.of(context).size.width/3,color: Colors.white,),
                        Container(width: MediaQuery.of(context).size.width/3,color: Colors.white,),
                      ],
                    ),
                    Center(
                      child: Text('Display Tab 2', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                    ),
                  ])
              )
            ])
        ),
      ],
    );
  }
}

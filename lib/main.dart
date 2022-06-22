import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/home_page.dart';
import 'package:instagram_ui/screens/profile_page.dart';
import 'package:instagram_ui/screens/search_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Instagram Ui';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(brightness: Brightness.dark,appBarTheme: AppBarTheme(elevation: 0,color: Colors.transparent)),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    Text(
      'Index 2: reel',
      style: optionStyle,
    ),
    Text(
      'Index 3: favorite',
      style: optionStyle,
    ),
    ProfilePage(),
  ];

  List appBarWidgets = [
    AppBar(title: Text('Instagram'),actions: [Icon(Icons.add_box_outlined),SizedBox(width: 10,),Icon(Icons.messenger_outline),SizedBox(width: 10,)],),
    AppBar(title: Container(
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Row(
      children: [
        Icon(Icons.search),
        Text('Search'),
      ],
    ),)),
    PreferredSize(
        preferredSize: Size.zero,
        child: SizedBox()),
    AppBar(title: Text('Activity'),),
    AppBar(title: Text('dulquerSalman__'),actions: [Icon(Icons.add_box_outlined),SizedBox(width: 10,),Icon(Icons.menu),SizedBox(width: 10,)],),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidgets.elementAt(_selectedIndex),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        items:  const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}

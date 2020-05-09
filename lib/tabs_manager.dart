import 'package:flutter/material.dart';
import 'package:meals/screens/category_screen.dart';
import 'package:meals/screens/favorite_screen.dart';
class TabsManager extends StatefulWidget {
  static const String routeName='TabsManager';
  @override
  _TabsManagerState createState() => _TabsManagerState();
}

class _TabsManagerState extends State<TabsManager> {
  int _selectedIndexPage=0;
  void _selectPage(int index){
    setState(() {
      _selectedIndexPage=index;
    });
  }
  final List<Map<String, Object>>_pages=[
    {
      'title':'Categories',
      'page': CategoryScreen(),
    },
    {
      'title':'Favorites',
      'page': FavoriteScreen(),
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedIndexPage]['title']),
      ),
      body:_pages[_selectedIndexPage]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('Categories'),
            icon: Icon(Icons.category),
          ),
          BottomNavigationBarItem(
            title: Text('Favorites'),
            icon: Icon(Icons.favorite_border),
            activeIcon: Icon(Icons.favorite),
          ),
        ],
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedIndexPage,
      ),
    );
  }
}



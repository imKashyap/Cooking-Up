import 'package:flutter/material.dart';
import 'package:meals/screens/favorite_screen.dart';
import 'package:meals/screens/filters_screen.dart';
import 'package:meals/tabs_manager.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: <Widget>[
            Container(
              color: Theme.of(context).accentColor,
              alignment: Alignment.center,
              height: 120,
              width: double.infinity,
              child: Text('Cookin\' Up!',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.red
              ),),
            ),
            _buildDrawerLists(Icons.restaurant,'Meals',()=>Navigator.of(context).pushReplacementNamed(TabsManager.routeName)),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
            _buildDrawerLists(Icons.settings,'Filters',()=>Navigator.of(context).pushReplacementNamed(FiltersScreen.routeName)),
            Divider(
              color: Theme.of(context).primaryColor,
            ),
          ],
        ),
    );
  }

  Widget _buildDrawerLists(IconData icon,String title, Function onTap){
    return ListTile(
      onTap: onTap,
      leading: Icon(icon),
      title: Text(title,
      style: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: 20.0
      ),),
    );
  }
}

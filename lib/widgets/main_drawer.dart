import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  Widget _buildMenuItem({String title, IconData icon, Function tapHandler}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).accentColor,
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          _buildMenuItem(
              icon: Icons.restaurant,
              title: 'Meals',
              tapHandler: () {
                Navigator.of(context).pushReplacementNamed('/');
              }),
          _buildMenuItem(
              icon: Icons.settings,
              title: 'Filters',
              tapHandler: () {
                Navigator.of(context).pushReplacementNamed('/filters');
              }),
        ],
      ),
    );
  }
}

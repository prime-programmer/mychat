import 'package:flutter/material.dart';
import 'package:flutter_chat_app/widgets/category_selector.dart';
import 'package:flutter_chat_app/widgets/favorite_contacts.dart';
import 'package:flutter_chat_app/widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back),
            iconSize: 25.0,
            color: Colors.white,
            onPressed: () {},),

        title: Text('Chats',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold),),

        elevation: 0.0,
        actions: <Widget>[
      IconButton(icon: Icon(Icons.search),
      iconSize: 25.0,
      color: Colors.white,
      onPressed: () {},),
        ],
      ),
      body: Column(
        children: <Widget>[
         CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: <Widget>[
                  FavoriteContacts(),
                  RecentChats(),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}

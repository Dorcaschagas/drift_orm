import 'package:drift_orm/view/cor/cor_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.deepPurple),
            child: Text(
              "Menu",
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.color_lens,
              color: Colors.black,
            ),
            title: const Text(
              "Settings Colors",
              style: TextStyle(color: Colors.black),
            ),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) {
                return const CorView();
              },));
            },
          ),
        ],
      ),
    );
  }
}

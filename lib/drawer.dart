import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.indigo),
            child: Container(
              child: UserAccountsDrawerHeader(
                accountName: Text("steve"),
                accountEmail: Text("steve@gmaillcom"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1567336273898-ebbf9eb3c3bf?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=486&q=80"),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("personal"),
            trailing: Icon(Icons.edit),
          )
        ],
      ),
    );
  }
}

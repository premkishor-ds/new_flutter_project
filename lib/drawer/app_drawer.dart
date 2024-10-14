import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 187, 192, 187)),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 195, 199, 195)),
              accountName: Text("Test User", style: TextStyle(fontSize: 18)),
              accountEmail: Text("testuser123@mail.com"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 233, 236, 232),
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 30.0, color: Colors.blue),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('My Profile'),
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('My Course'),
          ),
          ListTile(
            leading: Icon(Icons.workspace_premium),
            title: Text('Go Premium'),
          ),
          ListTile(
            leading: Icon(Icons.video_label),
            title: Text('Saved Videos'),
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Edit Profile'),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          ),
        ],
      ),
    );
  }
}

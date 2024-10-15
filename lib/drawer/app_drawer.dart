import 'package:flutter/material.dart';
import '../pages/my_profile_page.dart'; // Import the created pages
import '../pages/my_course_page.dart';
import '../pages/go_premium_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 187, 192, 187)),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 195, 199, 195)),
              accountName: Text("Samuel", style: TextStyle(fontSize: 18)),
              accountEmail: Text("samuel123@mail.com"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 233, 236, 232),
                child: Text(
                  "S",
                  style: TextStyle(fontSize: 30.0, color: Colors.blue),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('My Profile'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const MyProfilePage()),
              ); // Navigate to MyProfilePage without closing the drawer
            },
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('My Course'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const MyCoursePage()),
              ); // Navigate to MyCoursePage without closing the drawer
            },
          ),
          ListTile(
            leading: const Icon(Icons.workspace_premium),
            title: const Text('Go Premium'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const GoPremiumPage()),
              ); // Navigate to GoPremiumPage without closing the drawer
            },
          ),
                    const ListTile(
            leading: Icon(Icons.video_label),
            title: Text('Saved Videos'),
          ),
          const ListTile(
            leading: Icon(Icons.edit),
            title: Text('Edit Profile'),
          ),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
          ),
          // Other items remain the same
        ],
      ),
    );
  }
}

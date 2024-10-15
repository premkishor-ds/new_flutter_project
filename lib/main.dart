import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/search_page.dart';
import 'pages/account_page.dart';
import 'drawer/app_drawer.dart';
import 'widgets/bottom_nav_bar.dart';
import 'pages/image_page.dart';
import 'pages/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int _counter = 0;
  int pageIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  List<Widget> getPages() {
    return [
      HomePage(counter: _counter),
      const SearchPage(),
      const AccountPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo app',
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text("Demo App"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.image),
              tooltip: 'Image Icon',
              onPressed: () {
                Navigator.of(_scaffoldKey.currentContext!).push(
                  MaterialPageRoute(
                      builder: (context) =>
                          const ImagePage()), // Correct context used here
                );
              },
            ),
            //IconButton
            IconButton(
              icon: const Icon(Icons.settings),
              tooltip: 'Setting Icon',
              onPressed: () {
                Navigator.of(_scaffoldKey.currentContext!).push(
                  MaterialPageRoute(
                      builder: (context) =>
                          const SettingPage()), // Correct context used here
                );
              },
            ), //IconButton
          ],
          backgroundColor: const Color.fromARGB(255, 195, 195, 199),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            tooltip: 'Menu Icon',
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        drawer: const AppDrawer(), // Move drawer logic to a separate file
        body: getPages()[pageIndex],
        bottomNavigationBar: MyBottomNavBar(
          currentIndex: pageIndex,
          onTabSelected: (index) {
            setState(() {
              pageIndex = index;
            });
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

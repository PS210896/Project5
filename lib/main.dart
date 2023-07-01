import 'package:flutter/material.dart';
import 'package:helloworld/about_page.dart';
import 'package:helloworld/home_page.dart';
import 'package:helloworld/login.dart';
import 'package:helloworld/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [
    HomePage(),
    profile_page(),
    Login(),
    about_page(),
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Summa Sport'),
      ),
      body: pages[currentPage],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Floating');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.sports_martial_arts_outlined), label: 'Sport'),
          NavigationDestination(icon: Icon(Icons.verified_user), label: 'Login'),
          NavigationDestination(icon: Icon(Icons.info), label: 'Over'),
        ],
        onDestinationSelected: (int index){
          setState(() {
            currentPage = index;
          });
          
        },
        selectedIndex: currentPage,
      ),
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project5/exercises.dart';
import 'package:project5/welcome.dart';

void main() {
  runApp(welcomepage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey,
      ),
      home:  DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(6),
              child: FloatingActionButton.extended(
                onPressed: (){},
                foregroundColor: Colors.white,
                backgroundColor: Colors.amber,
                icon: const Icon(Icons.exit_to_app),
                label: const Text(
                  'Uitloggen',
                ),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      width: 3,color: Colors.white
                  ),
                  borderRadius: BorderRadius.circular(100)
                ),
              ),
            ),
            leadingWidth: 150,
            title: const Text(
              'Exercise app',
               textAlign: TextAlign.right,
            ),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.home))
              ],
            ),
          ),
          body: TabBarView(
            children: [
              welcomepage(),
              exerciselist(),
            ],
          ),
        ),
      ),
    );
  }
}

//class MyHomePage extends StatefulWidget {
//  const MyHomePage({super.key, required this.title});

//  final String title;

//  @override
//  State<MyHomePage> createState() => _MyHomePageState();
//}

//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;

//}

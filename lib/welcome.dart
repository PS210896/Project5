import 'dart:ffi';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project5/main.dart';


class welcomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welkom'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(6),
              child: FloatingActionButton.extended(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp())
                  );
                },
                foregroundColor: Colors.black,
                backgroundColor: Colors.amber,
                icon: const Icon(Icons.arrow_forward_outlined),
                label: const Text(
                  'Overslaan',
                ),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 3,color: Colors.white
                  ),borderRadius: BorderRadius.circular(100)
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 24),
              child: textcarousel(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 150,
                top: 500,
              ),
              child: FloatingActionButton.extended(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                  );
                },
                foregroundColor: Colors.black,
                backgroundColor: Colors.amber,
                //icon: const Icon(Icons.arrow_forward_outlined),
                label: const Text(
                  'Starten',
                ),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 3,
                    color: Colors.white
                  ),
                  borderRadius: BorderRadius.circular(100)
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}

class textcarousel extends StatelessWidget {
  const textcarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Container(
                margin: const EdgeInsets.all(8.0),
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.white,
                    width: 4
                  ),
                ),
                child: const Text(
                  'nigger',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.white,
                    width: 4
                  ),
                ),
                child: const Text(
                  'nigger',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8.0),
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.white,
                    width: 4
                  ),
                ),
                child: const Text(
                  'nigger',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 380.0,
              enlargeCenterPage: true,
              autoPlay: false,
              aspectRatio: 16 / 9,
              enableInfiniteScroll: false,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 1,
            ),
          ),
        ],
      ),
    );
  }
}
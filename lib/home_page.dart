import 'package:flutter/material.dart';
import 'package:helloworld/home_page_leer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      
        
      
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const HomePageLeer();
              },
            ),
          );
        },
        child: const Text('Leer Flutter'),
        
      ),
    );
  }
}

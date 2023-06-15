import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: FloatingActionButton(
        child: const Text('About'),
        onPressed: (){
          showDialog(
            context: context,
            builder: (BuildContext context){
              return const AboutDialog(
                applicationName: 'Eindopdracht',
                applicationVersion: 'V1',
                applicationLegalese: '© 2023 Julian Achterberg. All rights reserved.',
              );
            }
          );
        }
      ),
    );
  }
}

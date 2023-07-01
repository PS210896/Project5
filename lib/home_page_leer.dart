import 'package:flutter/material.dart';


class HomePageLeer extends StatefulWidget {
  const HomePageLeer({super.key});

  @override
  State<HomePageLeer> createState() => _HomePageLeerState();
}

class _HomePageLeerState extends State<HomePageLeer> {


  bool isSwitch = false;

  // ignore: non_constant_identifier_names
  bool? IsCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leer Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Test1');
            },
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/5c5.jpg'),
            const FlutterLogo(size: 40,),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'The Wok',
                  style: TextStyle(
                    color: Colors.white,
                    
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.green : Colors.black,
              ),
              onPressed: () {
                debugPrint('Thee woooook');
              },
              child: const Text('The Wok'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is the row');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.fire_hydrant_alt_outlined, color: Colors.blue),
                  Text(
                    'Fire',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  Icon(
                    Icons.fire_hydrant_alt_outlined,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: IsCheckbox,
                onChanged: (bool? newBool) {
                  setState(() {
                    IsCheckbox = newBool;
                  });
                }),
            Image.network(
                'https://qph.cf2.quoracdn.net/main-qimg-c3a1d650549550d978fb830d553206b3-lq')
          ],
        ),
      ),
    );
  }
}

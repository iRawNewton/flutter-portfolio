import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width / 2,
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile1.jpg'),
              ),
            ),
            const Text(
              'Raw Newton',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'Flutter Developer',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 2.5,
                  color: Colors.pink.shade100),
            ),
            const SizedBox(
              width: 150,
              child: Divider(
                thickness: 1.5,
              ),
            ),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.call,
                    color: Colors.pink,
                  ),
                  title: Text(
                    '+91 7002958113',
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.pink.shade900),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: const Icon(
                    Icons.email,
                    color: Colors.pink,
                  ),
                  title: Text(
                    'gaurabroy16@gmail.com',
                    style: TextStyle(
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.pink.shade900),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(10),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.pink.shade700),
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SizedBox(),
                    Text(
                      'About Me',
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 1.5,
                          color: Colors.white),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

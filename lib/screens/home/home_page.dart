import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/about_me/about.dart';
import 'package:badges/badges.dart' as badges;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff222222),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // * image
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 2,
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile1.jpg'),
              ),
            ),

            // * name
            badges.Badge(
              position: badges.BadgePosition.topEnd(top: 0, end: -25),
              badgeContent: const Icon(
                Icons.verified_rounded,
                color: Colors.blue,
              ),
              badgeStyle: const badges.BadgeStyle(
                shape: badges.BadgeShape.circle,
                badgeColor: Color(0xff222222),
              ),
              child: const Text(
                'Raw Newton',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffFFB400)),
              ),
            ),

            // * designation
            Text(
              'Flutter Developer',
              style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  letterSpacing: 2.5,
                  color: Colors.yellow.shade100),
            ),

            // * divider
            const SizedBox(
              width: 150,
              child: Divider(
                thickness: 1.5,
              ),
            ),

            // * phone number
            const SizedBox(height: 30),
            const Card(
              color: Colors.black12,
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.call,
                    color: Color(0xffFFB400),
                  ),
                  title: Text(
                    '+91 7002 958 113',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Color(0xffFFB400),
                    ),
                  ),
                ),
              ),
            ),

            // * email
            const Card(
              color: Colors.black12,
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Color(0xffFFB400),
                  ),
                  title: Text(
                    'gaurabroy16@gmail.com',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0xffFFB400),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // * about me button
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(10),
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xffFFB400)),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const AboutUs()));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(),
                    Text(
                      'Continue',
                      style: TextStyle(
                          fontFamily: 'SourceSansPro',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          letterSpacing: 1.5,
                          color: Colors.black87),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black87,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

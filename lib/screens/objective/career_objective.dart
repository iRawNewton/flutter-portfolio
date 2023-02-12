import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/education/education.dart';

import '../home/home_page.dart';

class MyObjective extends StatefulWidget {
  const MyObjective({super.key});

  @override
  State<MyObjective> createState() => _MyObjectiveState();
}

class _MyObjectiveState extends State<MyObjective> {
  String desc =
      'An MCA graduate with a passion for developing innovative and user-friendly applications. With my strong technical skills and months of experience in Flutter, I am eager to contribute my expertise to a challenging and dynamic work environment.\n\nThroughout my studies and work experience, I have honed my problem-solving and communication skills, allowing me to effectively collaborate with cross-functional teams. \n\nMy goal is to utilize my education and experience to make a positive impact in the tech industry and continue to grow as a professional. Let\'s connect and explore opportunities to work together.';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.pink,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50.0),
              const Text(
                'Career Objective',
                style: TextStyle(
                    fontFamily: 'SecularOneRegular',
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                    color: Colors.white),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: const Divider(
                  thickness: 1.5,
                ),
              ),
              // card
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 40.0),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Text(
                    desc,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontFamily: 'DosisRegular',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.pink.shade900),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: IconButton(
                      color: Colors.black,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MyHomePage()));
                      },
                      icon: const Icon(Icons.arrow_back_ios_new),
                    ),
                  ),
                  // const Spacer(),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: IconButton(
                      color: Colors.black,
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const MyEducation()));
                      },
                      icon: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

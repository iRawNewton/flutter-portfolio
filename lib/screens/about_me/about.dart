import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/colors.dart';
import 'package:flutter_portfolio/widgets/custom_text.dart';
import 'package:flutter_portfolio/widgets/divider_title.dart';
import 'package:flutter_portfolio/widgets/icon_text.dart';
import 'package:flutter_portfolio/widgets/timeline/timeline_tile.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xff222222),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40.0),

              // * title
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ABOUT',
                    style: GoogleFonts.poppins(
                      fontSize: 55.0,
                      color: Colors.white70,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    ' ME',
                    style: GoogleFonts.poppins(
                      fontSize: 55.0,
                      color: accentColor,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                ],
              ),

              //  * subtitle
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 40.0,
                    child: Divider(
                      color: accentColor,
                      thickness: 1.0,
                    ),
                  ),
                  Text(
                    'I DESIGN AND CODE BEAUTIFUL THINGS.',
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      color: const Color(0xffFFFFFF),
                    ),
                  ),
                  const SizedBox(
                    width: 40.0,
                    child: Divider(
                      color: accentColor,
                      thickness: 1.0,
                    ),
                  ),
                ],
              ),

              // * photo
              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.45,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.40,
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: accentColor,
                              width: 8.0,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          height: MediaQuery.sizeOf(context).height * 0.42,
                          width: MediaQuery.sizeOf(context).width * 0.89,
                          decoration: const BoxDecoration(),
                          child: Image.asset('assets/images/profile1.jpg',
                              fit: BoxFit.fitWidth),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // * details
              const SizedBox(height: 40.0),

              // * divider
              const AboutUsDivider(title: 'Personal Details'),

              // * name
              const IconText(
                iconData: Icons.person,
                title: 'Name:',
                value: 'Gaurab Roy',
              ),
              const SizedBox(height: 5.0),

              // * Date of birth
              const IconText(
                iconData: Icons.date_range,
                title: 'Date of Birth:',
                value: '16th September, 1997',
              ),
              const SizedBox(height: 7.0),

              // * nationality
              const IconText(
                iconData: Icons.public,
                title: 'Nationality:',
                value: 'Indian',
              ),
              const SizedBox(height: 20.0),

              // * divider
              const AboutUsDivider(title: 'Contact Info'),
              const SizedBox(height: 5.0),

              // * phone
              const IconText(
                iconData: Icons.call,
                title: 'Phone No.:',
                value: '+91 7002 958 113',
              ),
              const SizedBox(height: 7.0),

              // * email
              const IconText(
                iconData: Icons.mail,
                title: 'Email:',
                value: 'gaurabroy16@gmail.com',
              ),
              const SizedBox(height: 5.0),

              // * Education
              const SizedBox(height: 20.0),
              const AboutUsDivider(title: 'Education'),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 0, 24.0, 0),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    CustomTimelineTile(
                      iconData: Icons.school,
                      isFirst: true,
                      isLast: false,
                      isPast: true,
                      instituteName: 'Government Secondary School, Meka',
                      degree: 'Examination: AISSE/ Class 10',
                      year: 'Year: 2014',
                      grade: 'CGPA: 6.8',
                    ),
                    CustomTimelineTile(
                      iconData: Icons.school,
                      isFirst: true,
                      isLast: false,
                      isPast: true,
                      instituteName: 'Our ABC Academy, Tinsukia',
                      degree: 'Examination: AISSCE/ Class 12',
                      year: 'Year: 2017',
                      grade: 'CGPA: 6.4',
                    ),
                    CustomTimelineTile(
                      iconData: Icons.school,
                      isFirst: true,
                      isLast: false,
                      isPast: true,
                      instituteName:
                          'University of Science and Technolofy,\nMeghalaya',
                      degree: 'Degree: Bachelor of Computer Application',
                      year: 'Year: 2017-20',
                      grade: 'SGPA: 8.25',
                    ),
                    CustomTimelineTile(
                      iconData: Icons.school,
                      isFirst: false,
                      isLast: false,
                      isPast: true,
                      instituteName:
                          'University of Science and Technolofy,\nMeghalaya',
                      degree: 'Degree: Master of Computer Application',
                      year: 'Year: 2020-22',
                      grade: 'SGPA: 8.10',
                    ),
                  ],
                ),
              ),

              // * Experience
              const SizedBox(height: 20.0),
              const AboutUsDivider(title: 'Experience'),
              Padding(
                padding: const EdgeInsets.fromLTRB(12.0, 0, 24.0, 0),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    CustomTimelineTile(
                      iconData: Icons.apartment,
                      isFirst: true,
                      isLast: false,
                      isPast: true,
                      instituteName: 'Zephyr Solutions - Internship',
                      degree: 'Role: Developer',
                      year: 'Duration: Jun 2021 - Sep 2021',
                      grade: 'Location: Guwahati, Assam, India',
                    ),
                    CustomTimelineTile(
                      iconData: Icons.apartment,
                      isFirst: true,
                      isLast: false,
                      isPast: true,
                      instituteName: 'Cyber Intelligence Solutions',
                      degree: 'Role: Flutter Developer',
                      year: 'Duration: Nov 2022 - Feb 2023',
                      grade: 'Location: Kolkata, West Bengal',
                    ),
                    CustomTimelineTile(
                      iconData: Icons.apartment,
                      isFirst: true,
                      isLast: false,
                      isPast: true,
                      instituteName: 'Kyptronix LLP',
                      degree: 'Role: App Developer (Android, iOS)',
                      year: 'Duration: Feb 2023 - Present',
                      grade: 'Location: Kolkata, West Bengal',
                    ),
                  ],
                ),
              ),

              // * elevated button
              Directionality(
                textDirection: TextDirection.rtl,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.forward_rounded),
                  label: const CustomText(
                    title: 'Continue',
                    size: 16.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yuga_portfolio/main.dart';
import 'package:yuga_portfolio/education.dart';
import 'package:yuga_portfolio/skill.dart';

// import 'package:url_launcher/url_launcher.dart';


class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ABOUT ME',
        style: TextStyle(fontFamily: 'Ramaraja',fontSize: 30.0),),
        centerTitle: true,
        backgroundColor: Colors.grey[100],
      ),
        backgroundColor: Colors.grey[100],
        body: ListView(
          children: [
            CircleAvatar(
              radius: 150.0,
              backgroundImage: AssetImage('assets/images/front.jpg'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: const Text(
                "I am Yuga Jaiswal from Lucknow. Currently, I am in 2nd year pursing Bachelor of Technology in Computer Science Engineering in specialization Data Science from Ajay Kumar Garg Engineering College.I have been doing competitive programming from 2nd semester. My domain is App Development and I am a trainee in Google Developer Group and Conatus.",
                style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),
              ),
            ),

          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey[500],
            //selectedItemColor: Colors.white,
            //unselectedItemColor: Colors.white.withOpacity(.60),
            selectedFontSize: 14,
            unselectedFontSize: 14,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.person),
                label: "About",
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.school),
                label: "Education",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: "Skill",
              ),
            ],

            onTap: (index) {
              switch (index) {
                case 0:
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FlutterApp()));
                  break;
                case 1:
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => about()));
                  break;
                case 2:
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => education()));
                  break;
                case 3:
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => skill()));
                  break;
                default:
                  break;
              }
            })
    );
  }
}

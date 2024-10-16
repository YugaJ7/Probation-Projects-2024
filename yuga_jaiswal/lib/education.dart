import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yuga_portfolio/main.dart';
import 'package:yuga_portfolio/about.dart';
import 'package:yuga_portfolio/skill.dart';
//import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const education());
}
class education extends StatefulWidget {
  const education({super.key});

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
              "EDUCATION",
              style: TextStyle(fontFamily: 'Ramaraja',fontSize: 30.0),),
      centerTitle: true,
      backgroundColor: Colors.grey[100],
        ),
        backgroundColor: Colors.grey[100],
        body: buildlist(),
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

  Widget buildlist() =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(
              'assets/images/edu.jpg',
              fit: BoxFit.fill,
            ),
            width: double.infinity,

          ),
          const SizedBox(
            height: 50,
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/school.jpg'),
                  ),
                  Padding(padding: EdgeInsets.all(6)),
                  Text(
                    'City Montessori School',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/college.jpg'),
                ),
                Padding(padding: EdgeInsets.all(6)),
                Text(
                  'Ajay Kumar Garg Engineering\nCollege',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        ],
      );
}

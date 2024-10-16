import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yuga_portfolio/main.dart';
import 'package:yuga_portfolio/education.dart';
import 'package:yuga_portfolio/about.dart';
// import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const skill());
}
class skill extends StatefulWidget {
  const skill({super.key});

  @override
  State<skill> createState() => _skillState();
}

class _skillState extends State<skill> {
  // _launchURL(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SKILLS",
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
  Widget _buildContactButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
      style: ElevatedButton.styleFrom(

        backgroundColor: Colors.grey[500],
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
  Widget buildlist() =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(
              'assets/images/skill.jpg',
              fit: BoxFit.fill,
            ),


          ),
          const SizedBox(
            height: 30,
          ),
          Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/html.png'),
                  ),
                  Padding(padding: EdgeInsets.all(15)),
                  CircleAvatar(
                    radius: 50,
                      backgroundImage: AssetImage('assets/images/java.png'),
                  ),
                  Padding(padding: EdgeInsets.all(15)),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/py.jpg'),
                  ),
                ],
              )),
          Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/flutter.png'),
                  ),
                  Padding(padding: EdgeInsets.all(15)),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/c.jpg'),
                  ),
                  Padding(padding: EdgeInsets.all(15)),
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/cp.jpg'),
                  ),
                ],
              )),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'PROFILE',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Ramaraja',
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(50.0,0.0,10.0,10.0),
            child:  Row(
              children: [
                _buildContactButton(
                  icon: FontAwesomeIcons.star,
                  label: 'Codeforces',
                  onPressed: () {
                    // _launchURL(
                    //     'https://codeforces.com/profile/stone_yuga7');
                  },
                ),
                Padding(padding: EdgeInsets.fromLTRB(20.0,0.0,8.0,10.0)),
                _buildContactButton(
                  icon: FontAwesomeIcons.star,
                  label: 'Codechef',
                  onPressed: () {
                    // _launchURL('https://www.codechef.com/users/stone7');
                  },
                ),
                Padding(padding: EdgeInsets.fromLTRB(8.0,0.0,8.0,10.0)),

              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(135.0,0.0,10.0,10.0),
            child:  Row(
              children: [
                _buildContactButton(
                  icon: FontAwesomeIcons.star,
                  label: 'Leetcode',
                  onPressed: () {
                    // _launchURL(
                    //     'https://leetcode.com/u/Stone_7/');
                  },
                ),

              ],
            ),
          ),
        ],
      );
}

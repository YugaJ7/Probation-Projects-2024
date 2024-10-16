import 'package:flutter/material.dart';
import 'package:yuga_portfolio/main.dart';
import 'package:yuga_portfolio/about.dart';
import 'package:yuga_portfolio/education.dart';
import 'package:yuga_portfolio/skill.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const contact());
}

class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
//   _launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact Info",
          style: TextStyle(fontFamily: 'Ramaraja',fontSize: 30.0),),
        centerTitle: true,
        backgroundColor: Colors.grey[100],

      ),
      drawer: Drawer(
          child:  ListView(
            padding: EdgeInsets.all(20.0),
            children: [
              ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text('About', style: TextStyle(fontSize: 25.0,
                    fontFamily: 'Poppins',),),
                  onTap:(){
                    Navigator.push(context,MaterialPageRoute(builder: (Context) => about()),);
                  }
              ),
              ListTile(
                  leading: Icon(Icons.account_balance),
                  title: Text('Education', style: TextStyle(fontSize: 25.0,
                    fontFamily: 'Poppins',),),
                  onTap:(){
                    Navigator.push(context,MaterialPageRoute(builder: (Context) => education()),);
                  }
              ),
              ListTile(
                  leading: Icon(Icons.work),
                  title: Text('Skills', style: TextStyle(fontSize: 25.0,
                    fontFamily: 'Poppins',),),
                  onTap:(){
                    Navigator.push(context,MaterialPageRoute(builder: (Context) => skill()),);
                  }
              ),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('Download CV', style: TextStyle(fontSize: 25.0,
                  fontFamily: 'Poppins',),),
              ),
              ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Contact Me', style: TextStyle(fontSize: 25.0,
                    fontFamily: 'Poppins',),),
                  onTap:(){
                    Navigator.push(context,MaterialPageRoute(builder: (Context) => skill()),);
                  }
              ),
            ],
          )
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => about()));
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
          }),
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
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [ 
            Container(
              child: Image.asset(
                'assets/images/cycle.jpg',
                fit: BoxFit.fill,),
                width: double.infinity,
              height: 230,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(25.0,20.0,30.0,20.0),
              child: Column(
                children: [
                  Text(
                    'Contact Information',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30.0,0.0,10.0,10.0),
              child: Row(
                children: [
                  Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              Padding(padding: EdgeInsets.fromLTRB(35.0,0.0,10.0,10.0)),
                     Text(
                    ' yuga23154080@akgec.ac.in',
                    style: TextStyle(
                      fontSize: 18,

                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30.0,0.0,10.0,10.0),
              child: Row(
                children: [
                  Text(
                    'Phone',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(35.0,0.0,10.0,10.0)),
                  Text(
                    '8090822729',
                    style: TextStyle(
                      fontSize: 18,

                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(15.0,0.0,10.0,10.0),
              child:  Row(
                children: [
                  _buildContactButton(

                    icon: Icons.email,
                    label: 'Email',
                    onPressed: () {
                      // _launchURL(
                      //     'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox');
                    },
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(8.0,0.0,8.0,10.0)),
                  _buildContactButton(
                    icon: FontAwesomeIcons.github,
                    label: 'GitHub',
                    onPressed: () {
                      // _launchURL('https://github.com/YugaJ7');
                    },
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(8.0,0.0,8.0,10.0)),
                  _buildContactButton(
                    icon: FontAwesomeIcons.linkedinIn,
                    label: 'LinkedIn',
                    onPressed: () {
                      // _launchURL(
                      //     'www.linkedin.com/in/yuga-jaiswal');
                    },
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(137.0,0.0,50.0,10.0),
              child:  Row(
                children: [
                  _buildContactButton(
                    icon: FontAwesomeIcons.twitter,
                    label: 'Twitter',
                    onPressed: () {
                      // _launchURL('https://x.com/yugaj7');
                    },
                  ),
                ],
              ),
            )

          ],
        ),
      );
}

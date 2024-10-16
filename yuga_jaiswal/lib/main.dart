import 'package:flutter/material.dart';
import 'package:yuga_portfolio/about.dart';
import 'package:yuga_portfolio/education.dart';
import 'package:yuga_portfolio/skill.dart';
import 'package:yuga_portfolio/contact.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: "Flutter app",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ); //MaterialApp
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    Navigator.push(context,MaterialPageRoute(builder: (Context) => contact()),);
                  }
              ),
            ],
          )
      ),
      backgroundColor: Colors.grey[100],
      body: ListView(
        padding:  EdgeInsets.fromLTRB(20.0,70.0,20.0,20.0),
        children: [
          CircleAvatar(
            radius:170,
            backgroundImage: AssetImage('assets/images/front.png')
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Hello, I\'m",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Poppins',
                  color: Colors.grey[700]
                ),
              ),
              Text(
                "Yuga Jaiswal",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'
                ),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    color: Colors.grey[700]
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 170,
                    height: 70,
                    margin: EdgeInsets.only(bottom: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => contact()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Contact Info",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 170,
                    height: 70,
                    margin: EdgeInsets.only(bottom: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => skill()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Download CV",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )

            ],
          )

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
}

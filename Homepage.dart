import 'package:dtc_application/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final String url = "https://chat.whatsapp.com/GkcMix1PywyKvlLZD8r4tN";

  void _launchURL() async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/background_image.jpg',
                ),
                fit: BoxFit.cover)),
        child: Scaffold(
          key: _scaffoldKey,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Image.asset(
                    'assets/images/dtc_logo.jpg',
                    width: MediaQuery.of(context).size.width * 0.19,
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
                onPressed: () {
                  _openRightDrawer();
                },
              ),
            ],
          ),
          endDrawer: Drawer(
            child: ListView(
              children: [
                ListTile(
                  title: Text('Home'),
                  onTap: () {
                    // Handle option 1
                  },
                ),
                ListTile(
                  title: Text('About'),
                  onTap: () {
                    // Handle option 2
                  },
                ),
                ListTile(
                  title: Text('Events'),
                  onTap: () {
                    // Handle option 1
                  },
                ),
                ListTile(
                  title: Text('Blogs'),
                  onTap: () {
                    // Handle option 2
                  },
                ),
                ListTile(
                  title: Text('FAQs'),
                  onTap: () {
         
                    // Handle option 1
                  },
                ),
                ListTile(
                  title: Text('Connect'),
                  onTap: () {
                    // Handle option 2
                  },
                ),
              ],
            ),
          ),

          body: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Row(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                  child: Text(
                    'Diploma Tech',
                    style: TextStyle(
                        fontFamily: 'Arvo',
                        fontSize: 40,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ]),
              Row(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.06,
                ),
                Container(
                  child: Text(
                    'Community',
                    style: TextStyle(
                        fontFamily: 'Arvo',
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: AppColors.Community),
                  ),
                )
              ]),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.06,
                ),
                Container(
                  // height: MediaQuery.of(context).size.height * 0.23,
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: SingleChildScrollView(
                    child: Text(
                      'DTC Community is a Community for Diploma Student who are Coding Enthusiasts here we organise sessions , Workshops, Open Source , Programms,Hackathons, and Events on various emerging technologies and domains.'
                      'Additionally,we share guided roadmaps  and help students learn & grow in the field of computer science ',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),

                    //onTap: _launchURL,
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: ElevatedButton(
                        onPressed: () {
                          _launchURL();
                        },
                        child: Text(
                          'Join Now',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.015),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.background,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                      ),
                    ),

                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.05,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Learn More',
                        style: TextStyle(
                            color: AppColors.communityText,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.015,
                            fontWeight: FontWeight.w400),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: BorderSide(color: Colors.black),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.07),
                height: MediaQuery.of(context).size.height * 0.37,
                width: MediaQuery.of(context).size.height * 0.4,
                child: Image.asset(
                  'assets/images/droid image.png',
                ),
              )
            ],
          ),
        ));
  }

  void _openRightDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }
}

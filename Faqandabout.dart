import 'package:flutter/material.dart';
import 'AppColors.dart';

class Faqandabout extends StatefulWidget {
  const Faqandabout({super.key});

  @override
  State<Faqandabout> createState() => _FaqandaboutState();
}

class _FaqandaboutState extends State<Faqandabout> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background3,
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/dtc_logo.jpg',
                width: MediaQuery.of(context).size.width * 0.12,
                height: MediaQuery.of(context).size.height * 0.12,
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
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.81,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                Row(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                  ),
                  Container(
                    child: Text(
                      'FAQs',
                      style: TextStyle(
                          color: AppColors.headingtext3,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Arvo',
                          fontSize: 34),
                    ),
                  ),
                ]),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ElevatedButton(
                      onPressed: () {




                      },
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            'What is diploma tech community ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: AppColors.text),
                          )),
                          Container(
                            child: Icon(
                              Icons.add,
                              color: AppColors.arrowcolor,
                            ),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.background3,
                      ),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            'How to join the community as a member? ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: AppColors.text),
                          )),
                          Container(
                            child: Icon(
                              Icons.add,
                              color: AppColors.arrowcolor,
                            ),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.background3,
                      ),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            'How to join the organising team ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: AppColors.text),
                          )),
                          Container(
                            child: Icon(
                              Icons.add,
                              color: AppColors.arrowcolor,
                            ),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.background3,
                      ),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            'What are the benefits of joining the diploma tech community',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: AppColors.text),
                          )),
                          Container(
                            child: Icon(
                              Icons.add,
                              color: AppColors.arrowcolor,
                            ),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.background3,
                      ),
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            'What type of events do we conduct ?',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: AppColors.text),
                          )),
                          Container(
                            child: Icon(
                              Icons.add,
                              color: AppColors.arrowcolor,
                            ),
                          )
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.background3,
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _openRightDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }
}

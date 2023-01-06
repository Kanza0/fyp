import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State <WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 100),
              child: Text(
                'Welcome to\n   TinyToes',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(Icons.account_circle),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'babyprofile');
                            },
                            child: Text(
                              'Make Baby Profile',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 30 ,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(Icons.sentiment_very_dissatisfied),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'cryanalysis');
                            },
                            child: Text(
                              'Do Cry Analysis',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            )),
                      ],
                    ),

                    SizedBox(
                      height: 30 ,
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(Icons.query_stats),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'stats');
                            },
                            child: Text(
                              'View Stats',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

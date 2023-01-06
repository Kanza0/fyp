import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({Key? key}) : super(key: key);

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/stats.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(

              padding: EdgeInsets.only(left: 100, top: 100),
              child: Text(
                'Daily Stats',
                style: TextStyle(color: Colors.black, fontSize: 40),
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
                    SizedBox(
                      height: 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'View Stats',
                          style: TextStyle(
                              color: Color(0xff4c505b),
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(Icons.query_stats),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'welcome');
                            },
                            child: Text(
                              'Back',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'feedback');
                            },
                            child: Text(
                              'Give Feedback',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            )),

                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


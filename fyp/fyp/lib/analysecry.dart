import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnalysecryPage extends StatefulWidget {
  const AnalysecryPage({Key? key}) : super(key: key);

  @override
  State<AnalysecryPage> createState() => _AnalysecryPageState();
}

class _AnalysecryPageState extends State<AnalysecryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/babyprofile.png'), fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 30),
              child: Text(
                'Analyse \nCry',
                style: TextStyle(color: Colors.black, fontSize: 50),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.28,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [



                    SizedBox(
                      height: 250,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'cryanalysis');
                            },
                            child: Text(
                              'back',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'stats');
                            },
                            child: Text(
                              'View Stats',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            )),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left:280),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xff4c505b),
                            child: IconButton(
                              color: Colors.white,
                              onPressed: () {},
                              icon: Icon(Icons.arrow_forward),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0,
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
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

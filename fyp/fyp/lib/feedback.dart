import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(

              padding: EdgeInsets.only(left: 70, top: 85),
              child: Text(
                'Rate Our App',
                style: TextStyle(color: Colors.white, fontSize: 40,  fontWeight: FontWeight.bold
                ),
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
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'stats');
                            },
                            child: Text(
                              'back',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'givefeedback');
                            },
                            child: Text(
                              'Give Feedback',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            )),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(Icons.rate_review),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 150,
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



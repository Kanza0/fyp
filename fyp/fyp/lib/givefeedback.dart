import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GivefeedbackPage extends StatefulWidget {
  const GivefeedbackPage({Key? key}) : super(key: key);

  @override
  State<GivefeedbackPage> createState() => _GivefeedbackPageState();
}

class _GivefeedbackPageState extends State<GivefeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/cryanalysis.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 25, top: 150),
              child: Text(
                'Give your feedback here',
                style: TextStyle(color: Colors.black, fontSize: 35),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Feedback',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Submit',
                          style: TextStyle(color: Colors.black, fontSize: 30),
                        ),
                        SizedBox(
                          height: 50,
                        ),

                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'feedback');
                            },
                            child: Text(
                              'back',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                                color: Color(0xff4c505b),
                              ),
                            ),
                        ),

                        Text(
                          'Thankyou',
                          style: TextStyle(color: Colors.black, fontSize: 28),
                        ),

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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CryAnalysisPage extends StatefulWidget {
  const CryAnalysisPage({Key? key}) : super(key: key);

  @override
  State<CryAnalysisPage> createState() => _CryAnalysisPageState();
}

class _CryAnalysisPageState extends State<CryAnalysisPage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
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
                'Perform\nCryAnalysis',
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
                    SizedBox(
                      height: 50,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Record Cry',
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
                            icon: Icon(Icons.keyboard_voice),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'welcome');
                            },
                            child: Text(
                              'back',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:280),

                          child:CircleAvatar(
                            radius: 30,
                            backgroundColor: const Color(0xff4c505b),
                            child: IconButton(
                              color: Colors.white,
                              onPressed: () {
                                Navigator.pushNamed(context, 'welcome');
                              },
                              icon: const Icon(Icons.arrow_forward),
                            ),
                          ),
                        )
                      ],
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

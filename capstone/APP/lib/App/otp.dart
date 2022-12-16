import 'package:flavien/App/conference.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Opt());

class Opt extends StatelessWidget {
  const Opt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'conference': (context) => const Conference()},
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF20201F),
        body: ListView(children: <Widget>[
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.only(
                    top: 40.0, right: 0.0, left: 110.0, bottom: 0.0),
                child: Center(
                  child: Row(
                    children: [
                      SizedBox(
                          height: 50,
                          width: 130,
                          child: Image.asset('assets/mwc.png')),
                      const Text(
                        'Conference',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.white,
                            fontSize: 20.0,
                            height: 2.4
                            //backgroundColor: Colors.white,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('OPT VERIFICATION',
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Enter the code \n from sms',
                        style: TextStyle(color: Colors.green, fontSize: 25),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        '01:30',
                        style: TextStyle(
                            color: Color.fromARGB(255, 235, 60, 7),
                            fontSize: 30),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(
                                width: 1, color: Colors.black))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(
                                width: 1, color: Colors.black))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Center(
                              child: Text(
                                '3',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(
                                width: 1, color: Colors.black))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Center(
                              child: Text(
                                '5',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(
                                width: 1, color: Colors.black))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: const [
                            Center(
                              child: Text(
                                '7',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                margin: const EdgeInsets.all(0.0),
                width: 300,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'conference');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(
                        255, 150, 5, 5), // Background color
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 71.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.end,

                children: const [
                  Text(
                    'Did not receive code?',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Resend ',
                    style: TextStyle(color: Color.fromARGB(255, 233, 210, 6)),
                  )
                ],
              )
            ],
          ),
        ]));
  }
}

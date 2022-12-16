import 'package:flavien/App/registration.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'registration': (context) => const Registration()},
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
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF20201F),
      body: ListView(
        children: <Widget>[
          Column(children: [
            Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.only(
                  top: 20.0, right: 0.0, left: 90.0, bottom: 0.0),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Mobile world \n Congress,welcome to the \n African continents most\n influential connectivity\n Event. ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'SPEAKERS',
                  style: TextStyle(
                      color: Color.fromARGB(220, 233, 236, 5), fontSize: 30),
                )
              ],
            ),
            SizedBox(
              child: Image.asset('assets/speakers.jpg'),
            ),
            Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 100,
                  child: Image.asset(
                    'assets/calendar.png',
                    alignment: Alignment.topLeft,
                  ),
                ),
                const Text(
                  'monday ,october 17,2023\n 09:30am-13:00pm',
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 100,
                  child: Image.asset(
                    'assets/location.png',
                    alignment: Alignment.topLeft,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  'Kigali Convention Center',
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    'ARE YOU INTERESTED?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 247, 243, 11),
                    ),
                  ),
                  Text(
                    'click next Button',
                    style: TextStyle(color: Color.fromARGB(255, 66, 7, 204)),
                  )
                ]),
            Container(
              margin: const EdgeInsets.all(0.0),
              width: 200,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'registration');
                },
                style: ElevatedButton.styleFrom(
                  primary:
                      const Color.fromARGB(255, 150, 5, 5), // Background color
                ),
                child: const Text(
                  'Register Now ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}

import 'package:flavien/App/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Registration());

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'login': (context) => const Login(),
      },
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
                    top: 10.0, right: 0.0, left: 90.0, bottom: 0.0),
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 5.0, right: 0.0, left: 30.0, bottom: 0.0),
                    child: Text(
                      'Create Account ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 5.0, right: 0.0, left: 30.0, bottom: 0.0),
                    child: Text(
                      'Your Name',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Your full name',
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                  ),
                ),
                // ignore: prefer_const_constructors
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 5.0, right: 0.0, left: 30.0, bottom: 0.0),
                    child: Text(
                      'Email Adress',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Email Adress',
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                  ),
                ),
                // ignore: prefer_const_constructors
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 5.0, right: 0.0, left: 30.0, bottom: 0.0),
                    child: Text(
                      'Phone Number',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.phone,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 5.0, right: 0.0, left: 30.0, bottom: 0.0),
                    child: Text(
                      'Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'password',
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 5.0, right: 0.0, left: 30.0, bottom: 0.0),
                    child: Text(
                      'Password',
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'confirm password',
                    hintStyle: TextStyle(color: Colors.white),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              SizedBox(
                  width: 251,
                  height: 42,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(
                              240, 100, 5, 5), // Background color
                        ),
                        child: const Text(
                          'sign up',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ))),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.end,

                children: const [
                  Text(
                    'Already have an accoint?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Login here',
                    style: TextStyle(
                        color: Color.fromARGB(255, 241, 123, 13), fontSize: 22),
                  )
                ],
              )
            ],
          ),
        ]));
  }
}

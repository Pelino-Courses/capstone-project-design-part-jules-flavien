import 'package:flavien/App/otp.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Login());

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {'otp': (context) => const Opt()},
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
      body: ListView(
        children: <Widget>[
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
              const SizedBox(
                height: 30.0,
              ),
              Container(
                margin: const EdgeInsets.only(right: 0.0),
                //color: Colors.white,
                width: 300.0,
                height: 450.0,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20.0, right: 0.0, left: 110.0, bottom: 0.0),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20.0, right: 0.0, left: 30.0, bottom: 0.0),
                          child: Text(
                            'Username',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const SizedBox(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your username',
                          prefixIcon: Icon(
                            Icons.person,
                            size: 17,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20.0, right: 0.0, left: 30.0, bottom: 0.0),
                          child: Text(
                            'Password',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const SizedBox(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 17,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(
                              top: 20.0, right: 0.0, left: 135.0, bottom: 0.0),
                          child: Text('Forgot Your Password?'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      margin: const EdgeInsets.all(0.0),
                      width: 200,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'otp');
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(
                              255, 150, 5, 5), // Background color
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Divider(
                      color: Colors.grey,
                      height: 40.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 40.0,
                            width: 40.0,
                            child: Image.asset('assets/git.PNG')),
                        SizedBox(
                            height: 40.0,
                            width: 40.0,
                            child: Image.asset('assets/twitter.png')),
                        SizedBox(
                            height: 40.0,
                            width: 40.0,
                            child: Image.asset('assets/google.png')),
                      ],
                    ),
                  ],
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
                    'Not yet a member?',
                    style: TextStyle(
                      color: Color.fromARGB(255, 226, 223, 6),
                    ),
                  ),
                  Text(
                    'Create account',
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

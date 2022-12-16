import 'package:flutter/material.dart';

void main() => runApp(const Conference());

class Conference extends StatelessWidget {
  const Conference({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    padding: const EdgeInsets.only(
                        top: 40.0, right: 0.0, left: 90.0, bottom: 0.0),
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
                        'in Africa we are fully aware that our \n continent has often missed oppurtunities\n to accelate development.in placing\n ICT at core of our transformation\n agenda we can make sure that Africa is\n again left behind ',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    child: Image.asset('assets/in.jpg'),
                  ),
                ],
              )
            ],
          ),
        ]));
  }
}

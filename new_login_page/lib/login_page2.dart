import 'package:flutter/material.dart';

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  bool isValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 61, 61, 61),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xff036BB9),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            children: [
              Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 15,
                    child: Column(
                      children: [
                        Container(
                          height: 350,
                          width: 455,
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurStyle: BlurStyle.normal,
                                  blurRadius: 15,
                                  color: Color.fromRGBO(0, 0, 0, 0.5),
                                  spreadRadius: 2,
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(10),
                              )),
                        ),
                        SizedBox(
                          height: 90,
                          width: 455,
                          child: Image.asset(
                            'assets/Polygon 1 (2).png',
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 50,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 120,
                          width: 450,
                          child: Image.asset(
                            'assets/Rectangle 19 (1).png',
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Welcome',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('By signing in you are agreeing our'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Term and privacy policy',
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 70,
                            right: 70,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Color(0xfff9f9f9),
                                hintText: 'Email Address',
                                hintStyle: TextStyle(
                                  color: Color(0xffc4c4c4),
                                ),
                                suffixIcon: Image.asset(
                                  'assets/mail.png',
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Color(0xffccc9c9),
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                  color: Color(0xffccc9c9),
                                ))),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 70,
                            right: 70,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xfff9f9f9),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                color: Color(0xffc4c4c4),
                              ),
                              suffixIcon: Image.asset(
                                'assets/lock.png',
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Color(0xffccc9c9),
                                  )),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color(0xffccc9c9),
                              )),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 50,
                          ),
                          child: ListTile(
                            leading: Checkbox(
                                activeColor: Color(0xffccc9c9),
                                checkColor: Color(0xffb4a8a8),
                                value: isValue,
                                onChanged: (newbool) {
                                  setState(() {
                                    isValue = !isValue;
                                  });
                                }),
                            title: Text(
                              'Remember Password',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w100),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Stack(
                children: [
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 100,
                          width: 455,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Image.asset(
                            'assets/Polygon 1 (3).png',
                            height: double.infinity,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                            height: 200,
                            width: 455,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(30),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 45,
                    child: Column(
                      children: [
                        Text(
                          'Forget Password',
                          style: TextStyle(
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 170,
                                decoration: BoxDecoration(
                                    color: Color(0xff0386D0),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                width: 170,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xff0386D0),
                                    ),
                                    borderRadius: BorderRadius.circular(50)),
                                child: Text(
                                  'Rigister',
                                  style: TextStyle(color: Color(0xff0386D0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Login with touch ID'),
                        SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          'assets/fingerprint.png',
                          height: 50,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('or connect with'),
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/facebook.png'),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset('assets/instagram.png'),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset('assets/pinterest.png'),
                            SizedBox(
                              width: 20,
                            ),
                            Image.asset('assets/linkedin.png'),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}

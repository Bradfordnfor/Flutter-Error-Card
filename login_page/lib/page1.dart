import 'package:flutter/material.dart';

class LoginPage1 extends StatefulWidget {
  const LoginPage1({super.key});

  @override
  State<LoginPage1> createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  bool isvalue = false;
  bool isVisible = false;
  void showPassword() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Login',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: 'By signing in you are agreeing \n our ',
                ),
                TextSpan(
                    text: 'Term and privacy policy',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      height: 2,
                    ))
              ])),
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xff036BB9),
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                Text(
                  'Register',
                  style: TextStyle(color: Color(0xffA6A6A6)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // SizedBox(
            //   width: 380,
            //   child: ListTile(
            //     leading: Image.asset('images/mail.png'),
            //     title: Text(
            //       'Email Adress',
            //       style: TextStyle(
            //         color: Color(0xffA6A6A6),
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: TextField(
                  decoration: InputDecoration(
                hintText: 'email address',
                hintStyle: TextStyle(
                  color: Colors.grey.shade500,
                ),
                prefixIcon: Image.asset('images/mail.png'),
              )),
            ),
            // SizedBox(
            //   width: 350,
            //   child: Divider(
            //     height: 2,
            //     color: Color(0xffA6A6A6),
            //   ),
            // ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: TextField(
                  obscureText: isVisible ? false : true,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey.shade500,
                      ),
                      prefixIcon: Image.asset('images/lock.png'),
                      suffixIcon: GestureDetector(
                        onTap: showPassword,
                        child: Image.asset(
                          "images/eye-icon.png",
                          color: isVisible ? Colors.black : Colors.grey,
                        ),
                      ))),
            ),
            // SizedBox(
            //   width: 380,
            //   child: ListTile(
            //     leading: Image.asset('images/lock.png'),
            //     trailing: Image.asset('images/eye-icon.png'),
            //     title: Text(
            //       'Password',
            //       style: TextStyle(
            //         color: Color(0xffA6A6A6),
            //       ),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   width: 350,
            //   child: Divider(
            //     height: 2,
            //     color: Color(0xffA6A6A6),
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            SizedBox(
              width: 380,
              child: ListTile(
                leading: Checkbox(
                    activeColor: const Color.fromARGB(255, 12, 114, 198),
                    value: isvalue,
                    onChanged: (newbool) {
                      setState(() {
                        isvalue = !isvalue;
                      });
                    }),
                title: Text(
                  'Remember password',
                  style: TextStyle(
                    color: Color(0xff6B5E5E),
                    fontSize: 13,
                  ),
                ),
                trailing: GestureDetector(
                  child: Text(
                    'Forget password',
                    style: TextStyle(
                      color: Color(0xff0386D0),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: Container(
                alignment: Alignment.center,
                height: 45,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 50, 110, 212),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'or connect with',
              style: TextStyle(
                color: Color(0xff747070),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                Image.asset(
                  'images/facebook.png',
                  width: 30,
                  height: 30,
                ),
                Image.asset(
                  'images/instagram.png',
                  width: 30,
                  height: 30,
                ),
                Image.asset(
                  'images/pinterest.png',
                  width: 30,
                  height: 30,
                ),
                Image.asset(
                  'images/linkedin.png',
                  width: 30,
                  height: 30,
                ),
              ],
            ),
            Expanded(
              child: Stack(
                children: [
                  Image.asset(
                    'images/image 11.png',
                    width: double.infinity,
                  ),
                  Image.asset(
                    'images/Subtract.png',
                    fit: BoxFit.fitWidth,
                    width: double.infinity,
                  ),
                  Positioned(
                      bottom: 30,
                      right: 0,
                      left: 0,
                      child: Image.asset(
                        'images/finger-print.png',
                        height: 70,
                        width: 70,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(color: Colors.white),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Log in',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: const [
                          Image(
                            image: AssetImage('assets/images/main.png'),
                            width: 500,
                            height: 200,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      //start email
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Email Addreed',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding:
                                const EdgeInsets.only(left: 20, bottom: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(35),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 6,
                                      offset: Offset(0, 2))
                                ]),
                            height: 50,
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              style: const TextStyle(color: Colors.black87),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(top: 14),
                              ),
                            ),
                          )
                        ],
                      ),
                      //end email
                      const SizedBox(height: 20),
                      //start password
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Password',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding:
                                const EdgeInsets.only(left: 20, bottom: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(35),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 6,
                                      offset: Offset(0, 2))
                                ]),
                            height: 50,
                            child: TextFormField(
                              obscureText: true,
                              style: const TextStyle(color: Colors.black87),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(top: 14),
                              ),
                            ),
                          )
                        ],
                      ),
                      //end password
                      const SizedBox(height: 10),
                      //start forgotpwbtn
                      Container(
                        alignment: Alignment.centerLeft,
                        child: TextButton(
                          onPressed: () => print('Forgot Password pressed'),
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Color(0xff5ac18e),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      //end forgotpwbtn
                      const SizedBox(height: 10),
                      Container(
                        alignment: Alignment.topCenter,
                        child: MaterialButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/register_screen'),
                          child: const Text(
                            'Register?',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff5ac18e),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      //start loginbtn
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        width: double.infinity,
                        height: 100,
                        child: MaterialButton(
                          elevation: 5,
                          onPressed: () =>
                              Navigator.pushNamed(context, '/mainscreen'),
                          padding: const EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          color: Colors.yellow,
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      //end loginbtn

                      //start skipbtn
                      Container(
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () => print('Skip Now pressed'),
                          child: const Text(
                            'Skip now',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      // buildLoginBtn(context)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = '/register_screen';
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var repasswordController = TextEditingController();
    Future<void> login() async {
      if (passwordController.text.isNotEmpty &&
          emailController.text.isNotEmpty) {
        var response = await post(
            Uri.parse(
                "https://638eb0834ddca317d7e3eb4d.mockapi.io/users/login"),
            body: ({
              'email': emailController.text,
              'password': passwordController.text
            }));
        if (response.statusCode == 201) {
          Navigator.pushNamed(context, '/');
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => MainScreen()));
        } else {
          print(response.statusCode);
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text("thong tin sai")));
        }
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("khong de trang")));
      }
    }

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
                    key: formKey,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Register',
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
                              controller: emailController,
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
                              controller: passwordController,
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
                      const SizedBox(height: 10),
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
                              controller: repasswordController,
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

                      //start loginbtn
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        width: double.infinity,
                        height: 100,
                        child: MaterialButton(
                          elevation: 5,
                          // onPressed: () =>
                          // Navigator.pushNamed(context, '/mainscreen'),
                          onPressed: () {
                            login();
                          },
                          padding: const EdgeInsets.all(15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35),
                          ),
                          color: Colors.yellow,
                          child: const Text(
                            'Register',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      //end loginbtn

                      //start login
                      Container(
                        alignment: Alignment.center,
                        child: MaterialButton(
                          onPressed: () => Navigator.pushNamed(context, '/'),
                          child: const Text(
                            'Login now',
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

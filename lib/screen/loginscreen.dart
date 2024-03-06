import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

TextEditingController txtEmail = TextEditingController();
TextEditingController txtpassword = TextEditingController();
bool password=true;
String Email='';
String Password='';
class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/img/bg.jpg'), fit: BoxFit.fill)),
              child: Opacity(
                opacity: 0.7,
                child: Container(
                  decoration: const BoxDecoration(color: Colors.black),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 150),
                    child: Column(
                      children: [
                        const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 300, top: 20),
                          child: Text(
                            'Email',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(right: 40, left: 40, top: 10),
                          child: TextField(
                            controller: txtEmail,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              label: Text('Email Address',style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700
                              ),),
                              // filled: true,
                              // fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2.0, // Adjust the border width here
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2, // Adjust the border width here
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 250, top: 20),
                          child: Text(
                            'Password',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(right: 40, left: 40, top: 10),
                          child: TextField(
                            obscureText:password,
                            controller: txtpassword,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              label: Text('password',style: TextStyle(
                                color: Colors.white70,
                                fontSize: 18,
                                fontWeight: FontWeight.w700
                              ),),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2.0, // Adjust the border width here
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                    width: 2, // Adjust the border width here
                                  ),
                                ),
                                suffixIcon:IconButton(icon: (password)?Icon(Icons.visibility,color: Colors.white,):Icon(Icons.visibility_off,color: Colors.white,),
                                  onPressed: () {
                                    setState(() {
                                      if(password)
                                        {
                                          password=false;
                                        }
                                      else{
                                        password=true;
                                      }
                                    });
                                  },
                                ),
                            ),
                               
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 200, top: 10),
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 240, right: 40),
                          child: Divider(),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Email=txtEmail.text;
                              Password=txtpassword.text;
                            });
                            Navigator.of(context).pushReplacementNamed('/screen');
                          },
                          child: Container(
                            height: 65,
                            width: 370,
                            decoration: const BoxDecoration(color: Colors.green),
                            child: const Center(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding:
                              EdgeInsets.only(right: 50, left: 50, top: 20),
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        const Text(
                          'Or login with',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 50, left: 50, top: 5),
                          child: Divider(
                            thickness: 2,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 45,
                              ),
                              Container(
                                height: 60,
                                width: 100,
                                decoration: const BoxDecoration(
                                    color: Color(0xff484848)),
                                child: Icon(
                                  Icons.g_mobiledata_outlined,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                height: 60,
                                width: 100,
                                decoration: const BoxDecoration(
                                    color: Color(0xff484848)),
                                child: Icon(
                                  Icons.apple,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                height: 60,
                                width: 100,
                                decoration: const BoxDecoration(
                                    color: Color(0xff484848)),
                                child: Icon(
                                  Icons.facebook,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: "Don't have an account?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                  ),),
                              TextSpan(
                                text: ' Signup',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

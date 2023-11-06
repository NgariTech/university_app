import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:university_app/screens/Register.dart';
import 'package:university_app/screens/homepage.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool showpassword = true;
  var snackbar = const SnackBar(
    content: Text('Login In Successful'),
    backgroundColor: Colors.blue,
    padding: EdgeInsets.fromLTRB(0, 0, 0, 2),
  );
  // bool _isobscure=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
              width: 250,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Column(
                //  crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.account_circle_sharp,
                    color: Colors.grey,
                    size: 75.0,
                    //  semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  const Text(
                    'Login',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.person),
                        contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: 'Enter Username',
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    child: TextField(
                      obscureText: showpassword,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              showpassword = !showpassword;
                            });
                          },
                          icon: const Icon(
                            Icons.remove_red_eye,
                          ),
                        ),
                        contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        hintText: 'Enter Password',
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(180, 50),
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        shape: const StadiumBorder(),
                        side: BorderSide.none),
                    child: const Text('Login'),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Homepage(),
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    },
                  )),

                  // Padding(
                  //   padding:const EdgeInsets.fromLTRB(0,25,0,15),
                  //     child: ElevatedButton(
                  //       style: ElevatedButton.styleFrom(
                  //         minimumSize:const Size(180,50),
                  //         backgroundColor: Colors.black,
                  //         foregroundColor: Colors.white,
                  //         shape: const StadiumBorder(),
                  //         side: BorderSide.none
                  //       ),
                  //       child:const Text('Login'),
                  //       onPressed: (){
                  //         Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) =>const Homepage(),));
                  //       },

                  //       )),
                  //
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                      child: RichText(
                          text: TextSpan(children: [
                        const TextSpan(
                            text: "Don't Have an Account? ",
                            style:
                                TextStyle(color: Colors.black, fontSize: 14)),
                        TextSpan(
                            text: "Register Now",
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 14),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreen(),
                                    ));
                              }),
                      ]))
                      // child: ElevatedButton(
                      //   style: ElevatedButton.styleFrom(
                      //     minimumSize:const Size(180,50),
                      //     backgroundColor: Colors.black,
                      //     foregroundColor: Colors.white,
                      //     shape: const StadiumBorder(),
                      //     side: BorderSide.none
                      //   ),
                      //   child:const Text('Register'),
                      //   onPressed: (){
                      //     Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => HomeScreen(),));
                      //   },

                      //   ))
                      //  ]
                      ),
                ],
              )),
        ));
  }
}
//  suffixIcon:IconButton(
//   icon:
//    Icon(Icons.remove_red_eye ,
//    isobscure ? Icons.visibility:Icons.visibility_off),

//     onPressed:(){
//     setState(){
//       obscureText:isobscure

//     }
//    },
//    ),

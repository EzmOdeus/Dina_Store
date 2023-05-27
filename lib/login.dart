import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/pngwing.com (1).png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(85, 2, 2, 0),
                            Color.fromARGB(255, 31, 19, 25),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                  ))),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 250,
                ),
                Text(
                  " Dina Store",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.5),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,

                  height: 50,

                  // color: Colors.black,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(169, 244, 143, 177)),

                  child: TextField(
                    cursorColor: Colors.pink,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white38),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.pink[700],
                        ),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,

                  height: 50,

                  // color: Colors.black,

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(169, 244, 143, 177)),

                  child: TextField(
                    cursorColor: Colors.pink,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.white38),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.pink[700],
                        ),
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomeScreen())),
                  child: Container(
                    width: 250,
                    height: 50,
                    child: Center(
                        child: Text(
                      "SIGN IN",
                      style: TextStyle(
                        fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: .7),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.pink),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}



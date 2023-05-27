import 'package:flutter/material.dart';

import 'package:food_app/home_screen.dart';
import 'package:food_app/model/list_food.dart';

class Cartview extends StatefulWidget {
  Cartview({
    Key? key,
  }) : super(key: key);

  @override
  State<Cartview> createState() => _CartviewState();
}

class _CartviewState extends State<Cartview> {
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
              ))),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 226, 164, 176),
              Color.fromARGB(169, 255, 255, 255),
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                      height: MediaQuery.of(context).size.height / 1,
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Color.fromARGB(169, 174, 87, 115),
                                      Color(0xFFCBAAFF),
                                    ],
                                  )),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset(
                                      data[index].image,
                                      fit: BoxFit.contain,
                                      width: 80,
                                      height: 80,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            data[index].name,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Text(
                                            data[index].name,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            '\$${data[index].price}',
                                            style: TextStyle(
                                              fontSize: 30,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ]),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.delete),
                                    color: Colors.red,
                                    onPressed: () {
                                      setState(() {
                                        data.removeAt(index);
                                      });
                                    },
                                    iconSize: 35,
                                  )
                                ],
                              ));
                        },
                        itemCount: data.length,
                        separatorBuilder: (BuildContext context, int index) {
                          double tot;
                          return SizedBox(
                            height: 20,
                          );
                        },
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (_) => checkout())),
                        child: Container(
                          width: 250,
                          height: 50,
                          child: Center(
                              child: Text(
                            "Check OUT",
                            style: TextStyle(
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
          ),
        ),
      ),
    );
    ;
  }
}

class checkout extends StatelessWidget {
  const checkout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
              ))),
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/pngegg.png',
                  ),
                  fit: BoxFit.contain,
                ),
              ),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(85, 2, 2, 0),
                        Color.fromARGB(255, 31, 19, 25),
                      ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                    ),
                  ))),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    Icon(
                  Icons.add_task_rounded,
                  color: Color.fromARGB(255, 155, 225, 157),
                  size: 70,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  " Order Done",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1.5),
                ),
                SizedBox(
                  height: 20,
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
                      "Back to Home",
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

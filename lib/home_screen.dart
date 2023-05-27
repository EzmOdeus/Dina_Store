import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/detials.dart';
import 'package:food_app/food_detail.dart';
import 'model/list_food.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      child: Center(
                        child: Image.asset("assets/images/girl.png"),
                      ),
                      decoration: BoxDecoration(
                          color: Color(0xffFF5F99),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Cartview())),
                      child: Image.asset(
                        "assets/images/shopbag.png",
                        width: 22,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello Dina!",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      "What flavour do you want today?",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    Image.asset(
                      "assets/images/filter.png",
                      width: 22,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 15),
                margin: EdgeInsets.only(bottom: 10),
                height: 315,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    final ListFood food = foodList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DetailFood(food: food);
                            },
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.only(right: 15, left: 0),
                        width: 225,
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Color(0xffFBCEDC),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  food.image,
                                  width: 150,
                                  height: 130,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      food.nama,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      food.flav,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "\$" + food.price.toString(),
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New in",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(
                          color: Color(0xffFF5F99),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: ListView.builder(
                  shrinkWrap: true,
                  reverse: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: foodList.length,
                  itemBuilder: (context, index) {
                    final ListFood food = foodList[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return DetailFood(food: food);
                            },
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 100,
                                height: 100,
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(bottom: 13),
                                decoration: BoxDecoration(
                                  color: Color(0xffFBCEDC),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Center(
                                    child: Image.asset(foodList[index].image)),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                height: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    SizedBox(
                                      width: 150,
                                      child: Text(
                                        foodList[index].nama,
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "\$" + foodList[index].price.toString(),
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          FavB(image: food.image,names: food.nama,price: food.price),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FavB extends StatefulWidget {
  final String names;
  final String price;
  final String image;

  const FavB({Key? key,  required this.names, required this.price, required this.image}) ;

  @override
  State<FavB> createState() => _FavBState();
}

class _FavBState extends State<FavB> {
  bool isFav = false;
  
  

  @override
  Widget build(BuildContext context) {
    
    return IconButton(
      onPressed: () {
        // data.addAll(
        //     // [Data(name: , price: price, image: food.image)]
        //     );
        final snak = SnackBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          content: Center(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Icon(
              Icons.beenhere,
              color: Colors.green,
            ),
            Text(
              'Added Successfully',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ])),
          backgroundColor: Colors.green.withOpacity(0.5),
          elevation: 10,
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 1),
          margin: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: MediaQuery.of(context).size.height / 1.4),
        );
        ScaffoldMessenger.of(context).showSnackBar(snak);

        setState(() {
          isFav = !isFav;
        });
      },
      icon: Icon(
        isFav ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
        color: Color(0xffFF5F99),
        size: 24.0,
      ),
    );
  }
}

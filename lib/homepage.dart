import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:pizza_app/order.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String pizzaCategoryValue = "veg";

  List pizzaCategory = [
    
  ];

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mediaQueryWidth * 0.025,
          ),
          child: const Text(
            'Pizza App',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: mediaQueryWidth * 0.025,
            ),
            child: Badge(
              badgeContent: const Text(
                "5",
                style: TextStyle(color: Colors.white),
              ),
              position: BadgePosition(
                  top: mediaQueryHeight * 0.002, start: mediaQueryWidth * 0.07),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Order(),
                        ));
                  },
                  icon: const Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.black,
                  )),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: mediaQueryHeight * 0.03,
              ),
              Center(
                child: Image.asset(
                  "assets/images/pizza.png",
                  height: mediaQueryHeight * 0.4,
                ),
              ),
              SizedBox(
                height: mediaQueryHeight * 0.02,
              ),
              const Text(
                'Custom Pizza',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: mediaQueryHeight * 0.02,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: mediaQueryWidth * 0.05,
                ),
                child: const Text(
                  'A large disc of dough, covered with tomato paste, then either'
                  'only grated cheese or pieces of mozzarella cheese, or other'
                  ' toppings like chopped vegetables, sausages, salami, etc. and '
                  'cheese, which is then baked together in a very hot oven, then '
                  'cut into slices so that one can eat it conveniently by taking '
                  'one wedge-shaped slice at a time. ',
                  textAlign: TextAlign.justify,
                  style:
                      TextStyle(color: Colors.black, fontStyle: FontStyle.italic
                          // fontSize: 25,
                          // letterSpacing: 1.2,
                          // fontWeight: FontWeight.w800,
                          ),
                ),
              ),
              SizedBox(
                height: mediaQueryHeight * 0.09,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                      context: context,
                      // elevation: 1,
                      builder: (BuildContext ctxt) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        const Text(
                                          "Category:",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        DropdownButton(
                                          value: pizzaCategoryValue,
                                          items: ,
                                          onChanged: (String? newValue){
                                            setState(() {
                                              pizzaCategoryValue = newValue!;
                                            });
                                          }
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: mediaQueryWidth * 0.03,
                                      vertical: mediaQueryHeight * 0.01),
                                  child: const Text(
                                    "\u{20B9} 3021",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: mediaQueryWidth * 0.03,
                                      vertical: mediaQueryHeight * 0.02),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Container(
                                      width: mediaQueryWidth * 0.35,
                                      height: mediaQueryHeight * 0.06,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: mediaQueryWidth * 0.015,
                                            vertical: mediaQueryHeight * 0.005),
                                        child: const Text(
                                          "Add to cart",
                                          style: TextStyle(
                                              fontSize: 20,
                                              // letterSpacing: 1.5,
                                              color: Colors.white),
                                        ),
                                      )),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        );
                      });
                },
                child: Container(
                  width: mediaQueryWidth * 0.5,
                  height: mediaQueryHeight * 0.075,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mediaQueryWidth * 0.025,
                        vertical: mediaQueryHeight * 0.01),
                    child: const Text(
                      "ORDER   NOW",
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 1.5,
                          color: Colors.white),
                    ),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

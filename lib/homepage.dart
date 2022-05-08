import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizza_app/order.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                "assets/images/pizza.png",
                height: mediaQueryHeight * 0.5,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: mediaQueryWidth * 0.5,
                height: mediaQueryHeight * 0.075,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(15)),
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mediaQueryWidth * 0.025,
                      vertical: mediaQueryHeight * 0.01),
                  child: const Text(
                    "ORDER   NOW",
                    style: TextStyle(
                        fontSize: 20, letterSpacing: 1.5, color: Colors.white),
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: mediaQueryWidth * 0.0,
          ),
          child: const Text(
            'Cart',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // actions: <Widget>[
        //   Padding(
        //     padding: EdgeInsets.symmetric(
        //       horizontal: mediaQueryWidth * 0.025,
        //     ),
        //     child: IconButton(
        //         onPressed: () {},
        //         icon: const Icon(
        //           Icons.shopping_cart_rounded,
        //           color: Colors.black,
        //         )),
        //   )
        // ],
      ),
      body: SafeArea(
        child: Column(children: const <Widget>[]),
      ),
    );
  }
}

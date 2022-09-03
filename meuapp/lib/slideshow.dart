// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Slideshow extends StatelessWidget {
  const Slideshow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController abobora = PageController();
    var lista = [
      Image.network(
        "https://images.unsplash.com/photo-1652113827326-5a47fea17cf0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
        fit: BoxFit.cover,
      ),
      Image.network(
        "https://images.unsplash.com/photo-1652432155524-bd2c5c444ce6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
        fit: BoxFit.cover,
      ),
      Image.network(
        "https://images.unsplash.com/photo-1652625543470-9271a758e0f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
        fit: BoxFit.cover,
      ),
      Image.network(
        "https://images.unsplash.com/photo-1652625543470-9271a758e0f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
        fit: BoxFit.cover,
      ),
    ];
    return Container(
      height: 250,
      child: Stack(
        children: [
          PageView(
            controller: abobora,
            children: lista,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              alignment: Alignment.center,
              child: SmoothPageIndicator(
                controller: abobora,
                count: lista.length,
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.white,
              ),
              width: 70,
              height: 35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("5", style: TextStyle(fontSize: 20)),
                  Icon(Icons.star, color: Colors.amber),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

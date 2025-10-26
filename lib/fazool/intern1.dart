import 'dart:ui';

import 'package:flutter/material.dart';

class Intern1 extends StatelessWidget {
  const Intern1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Hi, David",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 30,
                              ),
                            ),
                            const Text(
                              "Expore the world",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white54,
                        backgroundImage: AssetImage(
                            "assets/images/intern1.jpg"),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 58,
                    width: 374,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(90),
                      // shape: BoxShape.rectangle,
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: Colors.grey,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Search Places",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(width: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "|",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(Icons.search),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Places",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: "Poppins"
                        ),
                      ),
                      Text(
                        "View all",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontFamily: "Poppins"
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    height: 55,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        InkWell(onTap: (){},
                          child: Container(
                            height: 54,
                            width: 136,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "Most Viewed",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        InkWell(onTap: (){},
                          child: Container(
                            height: 54,
                            width: 105,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "Nearby",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        InkWell(onTap: (){},
                          child: Container(
                            height: 54,
                            width: 111,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Center(
                              child: Text(
                                "Latest",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  SizedBox(height: 411,
                    child: ListView(

                        scrollDirection: Axis.horizontal,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 411,
                                width: 270,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.asset(
                                  "assets/images/tile1.png", fit: BoxFit.fill,),
                              ),
                              Positioned(
                                right: 10,
                                top: 10,
                                child: Container(
                                  padding: const EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.6),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(Icons.favorite_border,
                                      color: Colors.black),
                                ),
                              ),
                              Positioned(
                                bottom: 30,
                                left: 15,
                                right: 15,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaX: 10, sigmaY: 10),
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      color: Colors.black.withOpacity(0.4),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Mount Fuji,",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16),
                                              ),
                                              Text(
                                                " Tokyo",
                                                style: TextStyle(
                                                    color: Colors.white70,
                                                    fontWeight: FontWeight
                                                        .normal,
                                                    fontSize: 16),
                                              ),

                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment
                                                .spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on_outlined,
                                                    color: Colors.grey,),
                                                  Text(
                                                    "Tokyo,Japan",
                                                    style: const TextStyle(
                                                      color: Colors.white70,
                                                      fontSize: 14,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "4.8",
                                                    style: TextStyle(
                                                        color: Colors.white70,
                                                        fontSize: 12),
                                                  ), SizedBox(width: 3),
                                                  Icon(Icons.star_border,
                                                      color: Colors.white70,
                                                      size: 14),

                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 411,
                            width: 270,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Image.asset(
                              "assets/images/tile1.png", fit: BoxFit.fill,),
                          ),
                        ]
                    ),)
                ],
              ),
            ),
          ),
        ),

        bottomNavigationBar: Container(
            height: 80,
            decoration: const BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              //
            ),
            child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
                child: BottomNavigationBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,

                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: Colors.black,

                  unselectedItemColor: Colors.grey,


                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home_filled), label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.search), label: 'Search'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.favorite_border), label: 'Favorites'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person_outline), label: 'Profile'),
                  ],
                ))
        ))
    ;
  }
}

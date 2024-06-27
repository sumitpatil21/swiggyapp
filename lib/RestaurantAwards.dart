import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'OfferZone.dart';

class RestaurantawardsPage extends StatefulWidget {
  const RestaurantawardsPage({super.key});

  @override
  State<RestaurantawardsPage> createState() => _RestaurantawardsPageState();
}

class _RestaurantawardsPageState extends State<RestaurantawardsPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height / 2.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                gradient: LinearGradient(
                  begin:Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff3d88af),
                    Color(0xff306986),
                    Color(0xff265c76),
                  ],),
                image: DecorationImage(image: AssetImage("assest/images/offer/main1.jpg"),fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.chevron_left,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.search,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Row(
                children: [
                  Text("Mega savings",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),)
                ],
              ),
            ),

            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ...List.generate(
                      restaurant.length,
                          (index) => Column(
                        children: [
                          Stack(
                            alignment: Alignment.topRight,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Icon(Icons.more_vert),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Container(
                                      height: height * 0.210,
                                      width: width * 0.350,
                                      margin: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                        BorderRadius.circular(10),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          opacity: 0.7,
                                          image: AssetImage(
                                              restaurant[index]['img']),
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Spacer(),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.white,
                                                  )),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 100,
                                          ),
                                          Text(
                                            '  ${restaurant[index]['name']}',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            '  ${restaurant[index]['off']}',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '  ${restaurant[index]['foodname']}',
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                        Text(
                                          '  ⭐ ${restaurant[index]['rate']} | ${restaurant[index]['duration']}',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        Text(
                                          '  ${restaurant[index]['add']}',
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13),
                                        ),
                                        Text(
                                          '  ${restaurant[index]['km']}',
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13),
                                        ),
                                        SizedBox(
                                          height: height * 0.060,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: height/2.2,
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assest/images/offer/dowanbar.jpg'),fit: BoxFit.cover),

              ),
            )
          ],
        ),
      ),
    );
  }
}

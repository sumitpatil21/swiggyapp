import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Geniepage extends StatefulWidget {
  const Geniepage({super.key});

  @override
  State<Geniepage> createState() => _GeniepageState();
}

class _GeniepageState extends State<Geniepage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height / 1.9,
            width: width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xffe4ddfe),
                    Color(0xffdad3fc),
                    Color(0xffd1c9fa),
                  ],
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70, left: 20),
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.house_fill),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        CupertinoIcons.chevron_down,
                        size: 20,
                      ),
                      SizedBox(
                        width: 210,
                      ),
                      Icon(
                        CupertinoIcons.person_circle_fill,
                        size: 40,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 20),
                  child: Row(
                    children: [
                      Text(
                        "603 Ramipark,Ramipark Society,Royal Stra..",
                        style: TextStyle(fontSize: 18, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Divider(
                  color: Colors.black26,
                  thickness: 1,
                  endIndent: 25,
                  indent: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        "genie",
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                            color: Colors.deepPurple),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 20),
                      child: Column(
                        children: [
                          Text(
                            "Delivering from",
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "7 am - 3 am",
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 25,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Column(
                        children: [
                          Text(
                            "Pick up or drop off",
                            style: TextStyle(
                                color: Colors.deepPurple.shade300,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "anything instantiy",
                            style: TextStyle(
                                color: Colors.deepPurple.shade300,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Container(
                        height: height / 4.2,
                        width: width / 2.3,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assest/images/offer/deliv-removebg-preview.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            height: height/11,
            width: width/1.1,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(image: AssetImage("assest/images/offer/geniepage.jpg"),scale: 1.2),
              boxShadow: [
                BoxShadow(color: Colors.black12,blurRadius: 10,spreadRadius: 2,),
              ],
              borderRadius: BorderRadius.circular(20)
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: height/5,
            width: width/1.1,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black12,blurRadius: 10,spreadRadius: 2,),
                ],
                borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Pick up or send anything",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                  Text("Sit bock, relax and let Genie do the rest",style: TextStyle(fontSize: 15),),
                  Container(
                    margin: EdgeInsets.only(left: 20,right: 20,top: 15),
                    height: height/12,
                    width: width/1.2,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(25)
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

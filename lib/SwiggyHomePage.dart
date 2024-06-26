import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageSwiggy extends StatefulWidget {
  const HomePageSwiggy({super.key});

  @override
  State<HomePageSwiggy> createState() => _HomePageSwiggyState();
}

class _HomePageSwiggyState extends State<HomePageSwiggy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:60,
        leading: Icon(CupertinoIcons.location_fill,color: Colors.orange.shade700,size: 25,),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("Surat"),
                Icon(CupertinoIcons.chevron_down)
              ],
            ),
            Text("Dindoli, Surat - 394210")
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(CupertinoIcons.person_circle_fill,size: 50,),
          )
        ],

      ),
      body: Column(
      children: [
        Container(
          margin: EdgeInsetsDirectional.only(top: 13,start: 20),
          height:65,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.purple.shade50,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Row(
            children: [
              SizedBox(width: 15,),
              Text("Search for 'Cake'",style: TextStyle(color: Colors.black54,fontSize: 18),),
              SizedBox(width: 165,),
              Icon(CupertinoIcons.search,color: Colors.black38,),
              VerticalDivider(color: Colors.black26,indent: 20,endIndent: 20,thickness: 1,),
              Icon(CupertinoIcons.mic_solid,color: Colors.orange.shade700,size: 25,),
            ],
          ),
        ),
        CarouselSlider(
          items: List.generate(
              bannerscrolllist.length,
                  (index) => Container(
                height: 300,
                width: 500,
                decoration: BoxDecoration(
                  color: Color(0xff232f3e),

                ),
              )),
          options: CarouselOptions(
            height: 250,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.99,
            disableCenter: true,
          ),
        ),
      ],
      ),
    );
  }
}
List bannerscrolllist=[1,2,3,4];
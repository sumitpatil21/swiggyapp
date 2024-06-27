import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart'; // Needed for platform channels
 // Geolocator plugin for accessing location

class Locationpage extends StatefulWidget {
  const Locationpage({super.key});

  @override
  State<Locationpage> createState() => _LocationpageState();
}

class _LocationpageState extends State<Locationpage> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 110, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("What's your location?",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),),
                Text("We need your location to show avalible ",
                  style: TextStyle(
                      fontSize: 20, color: Colors.black54, letterSpacing: 1),),
                Text("restaurants & product ", style: TextStyle(
                    fontSize: 20, color: Colors.black54, letterSpacing: 1),),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            height: height / 2.2,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black12,
              image: DecorationImage(image: NetworkImage("https://www.efaflex.com/wp-content/uploads/2022/07/unternehmen_sales_branchenwissen.jpg"),fit: BoxFit.cover),
            ),
          ),
          SizedBox(height: 30,),
          InkWell(
            onTap: () {
              setState(() {
              checkPermission(Permission.location, context);
              });
            },
            child: Container(
              height: height / 13,
              width: width / 1.1,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text("Allow location access", style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),),
              ),
            ),
          ),
          TextButton(onPressed: () {
            setState(() {

            });
          },
            child: Text("Enter location Manually", style: TextStyle(
                color: Colors.deepOrange,
                fontSize: 21,
                fontWeight: FontWeight.w700),),)
        ],
      ),
    );
  }
}




Future<void> checkPermission(Permission permission, BuildContext context) async{
  final status = await permission.request();
  if(status.isGranted){
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Permission is Granted")));
  }else{
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Permission is not Granted")));

  }
}



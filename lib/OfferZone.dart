import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class OfferZonePage extends StatefulWidget {
  const OfferZonePage({super.key});

  @override
  State<OfferZonePage> createState() => _OfferZonePageState();
}

class _OfferZonePageState extends State<OfferZonePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: BezierClipper(),
              child: Container(
                height: height/2.5,
                decoration: BoxDecoration(
                  color: Color(0xff6e00dd),
                  image: DecorationImage(image: AssetImage("assest/images/offer/WhatsApp Image 2024-06-27 at 10.13.50_db64c056.jpg"),scale: 2),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: () {
        
                          }, icon:Icon(CupertinoIcons.chevron_left,size: 30,color: Colors.white,),),
                          IconButton(onPressed: () {
        
                          }, icon:Icon(CupertinoIcons.search,size: 30,color: Colors.white,),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Row(
                children: [
                  Text("Top Offer for you",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700),),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ...List.generate(
                      offer.length,
                          (index) => Column(
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 120,
                                  width: 100,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.black12,
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(offer[index]['img']!),
                                    ),
                                  ),
                                  child: Padding(
                                    padding:
                                    EdgeInsets.only(top: 65, left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          offer[index]['name']!,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          offer[index]['off']!,
                                          style: TextStyle(
                                              color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(offer[index]['foodname']!),
                              Text(
                                offer[index]['duration']!,
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 10),
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
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 10),
              child: Row(
                children: [
                  Text("Most loved deals on Swiggy",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700),),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15,top: 18),
                  height: height/25,
                  width: width/3.8,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black38,
                      width: 2
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text("Min 50% off",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15,top: 18),
                  height: height/25,
                  width: width/3.8,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black38,
                        width: 2
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text("Min 100% off",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Wrap(
                children: List.generate(MostLovedDeal.length, (index) => Column(
                  children: [
                    Container(
                      height: height/7.3,
                      width: width/3.7,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(offer[index]['img']!),
                        ),
                      ),
                    ),
                  ],
                ),),
              ),
            ),
            Container(
              height: height/15,
              width: width,
              margin: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                border: Border.symmetric(horizontal: BorderSide(
                  color: Colors.black26,width: 1.5,style: BorderStyle.solid
                ))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("SEE ALL",style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.w800,fontSize: 20),),
                  Icon(CupertinoIcons.chevron_right,color: Colors.deepOrange,size: 22,)
                ],
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  
                  Text("Tasty Treats, Save up to 60%",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
                ],
              ),
            ),
            Container(
                height: height * 0.290,
                width: double.infinity,
                color: Colors.white,
                padding: EdgeInsets.all(5),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ...List.generate(
                            imagelist.length,
                                (index) => Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  height: height/12,
                                  width: width/6,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(

                                          imagelist[index]['image']),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  imagelist[index]['foodName'],
                                  style: TextStyle(
                                      color: Colors.grey.shade800,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          ...List.generate(
                            imagelist1.length,
                                (index) => Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  height: height/12,
                                  width: width/6,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          imagelist1[index]['image']),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(imagelist1[index]['fdnam'],
                                    style: TextStyle(
                                        color: Colors.grey.shade800,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text("Mega savings",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
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

          ],
        ),
      ),
    );
  }
}

class BezierClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height);
    double x = -100;
    double y = size.height -25;
    double yControlPoint = size.height + .88;
    double increment = size.width / 8;

    while (x < size.width) {
      path.quadraticBezierTo(
          x + increment / 2, yControlPoint, x + increment, y);
      x += increment;
    }

    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper old) {
    return old != this;
  }
}
List restaurant = [
  {
    'add': 'Punjabi, North Indian, Paratha',
    'km': 'Sion - 2.2 km',
    'name': '50% OFF',
    'off': 'UPTO ₹100',
    'rate': '4.4k (100+)',
    'img': 'assest/images/offer/thepla.jpg',
    'foodname': 'Jassi De Parathe',
    'duration': '35-45 mins',
  },
  {
    'km': 'New Textile Market - 7.2 km',
    'add': 'Pizza, Desserts, Beverages',
    'name': '49% OFF',
    'off': 'ABOVE ₹239',
    'rate': '3.3k (1k+)',
    'img': 'assest/images/offer/pizza.jpg',
    'foodname': 'Pizza Castele',
    'duration': '20-30 mins',
  },
  {
    'km': 'Udhna Gam - 2.6 km',
    'add': 'Bihari, Fast Food',
    'name': '32% OFF',
    'off': 'UPTO ₹110',
    'rate': '4.1k (100+)',
    'img': 'assest/images/offer/paratha.jpeg',
    'foodname': 'Riya Ka Kitchen',
    'duration': '20-30 mins',
  },
  {
    'add': 'Chinese',
    'km': 'Salabatpura - 6.2 km',
    'name': '20% OFF',
    'off': 'UPTO ₹349',
    'rate': '4.7k (20+)',
    'img': 'assest/images/offer/chinese.jpeg',
    'foodname': 'Chinese',
    'duration': '25-35 mins',
  },
  {
    'add': 'Biryani',
    'name': '40% OFF',
    'off': 'ABOVE ₹189',
    'rate': '3.7k (100+)',
    'img': 'assest/images/offer/biryani.jpeg',
    'foodname': 'Tawakal Biryani \n   Center',
    'duration': '20-30 mins',
  },
  {
    'add': 'Street Food',
    'km': 'Dindoli - 1.6 km',
    'name': '44% OFF',
    'off': 'ABOVE ₹119',
    'rate': '2.5k (20)',
    'img': 'assest/images/offer/bhature.jpg',
    'foodname': 'Punjabi Dhaba',
    'duration': '40-50 mins',
  },
  {
    'km': 'Athwa - 7.7 km',
    'add': 'Cakes and Pastries, Bakery',
    'name': '21% OFF',
    'img': 'assest/images/offer/cake.jpeg',
    'off': 'UPTO ₹239',
    'rate': '1.2k (3)',
    'foodname': 'Sainath Live Cake',
    'duration': '15-20 mins',
  },
  {
    'add': 'Street Food',
    'km': 'Udhna Gam - 3.9 km',
    'name': '43% OFF',
    'img': 'assest/images/offer/role.jpeg',
    'rate': '3.5k (1k+)',
    'off': 'ABOVE ₹349',
    'foodname': 'Madina Hotel',
    'duration': '40-45 mins',
  },
];
List MostLovedDeal=[1,2,3,4,5,6];
List offer = [
  {
    'add': 'Biryani',
    'name': '40% OFF',
    'off': 'ABOVE ₹189',
    'rate': '3.7k (100+)',
    'img': 'assest/images/offer/bhature.jpg',
    'foodname': 'Tawakal\nBiryani Center',
    'duration': '20-30 mins',
  },
  {
    'add': 'Street Food',
    'km': 'Dindoli - 1.6 km',
    'name': '44% OFF',
    'off': 'ABOVE ₹119',
    'rate': '2.5k (20)',
    'img': 'assest/images/offer/biryani.jpeg',
    'foodname': 'Punjabi\nDhaba',
    'duration': '40-50 mins',
  },
  {
    'km': 'Athwa - 7.7 km',
    'add': 'Cakes and Pastries, Bakery',
    'name': '21% OFF',
    'img': 'assest/images/offer/butter paratha.jpeg',
    'off': 'UPTO ₹239',
    'rate': '1.2k (3)',
    'foodname': 'Sainath Live\nCake',
    'duration': '15-20 mins',
  },
  {
    'add': 'Chinese',
    'km': 'Salabatpura - 6.2 km',
    'name': '20% OFF',
    'off': 'UPTO ₹349',
    'rate': '4.7k (20+)',
    'img': 'assest/images/offer/cake.jpeg',
    'foodname': 'Chinese',
    'duration': '25-35 mins\n',
  },
  {
    'km': 'Udhna Gam - 2.6 km',
    'add': 'Bihari, Fast Food',
    'name': '32% OFF',
    'off': 'UPTO ₹110',
    'rate': '4.1k (100+)',
    'img': 'assest/images/offer/chinese.jpeg',
    'foodname': 'Riya Ka\nKitchen',
    'duration': '20-30 mins',
  },
  {
    'km': 'New Textile Market - 7.2 km',
    'add': 'Pizza, Desserts, Beverages',
    'name': '49% OFF',
    'off': 'ABOVE ₹239',
    'rate': '3.3k (1k+)',
    'img': 'assest/images/offer/paratha.jpeg',
    'foodname': 'Pizza Castele',
    'duration': '20-30 mins\n',
  },
  {
    'add': 'Punjabi, North Indian, Paratha',
    'km': 'Sion - 2.2 km',
    'name': '50% OFF',
    'off': 'UPTO ₹100',
    'rate': '4.4k (100+)',
    'img': 'assest/images/offer/pizza.jpeg',
    'foodname': 'Jassi De\nParathe',
    'duration': '35-45 mins',
  },
  {
    'add': 'Street Food',
    'km': 'Udhna Gam - 3.9 km',
    'name': '43% OFF',
    'img': 'assest/images/offer/punjabi thali.jpeg',
    'rate': '3.5k (1k+)',
    'off': 'ABOVE ₹349',
    'foodname': 'Madina\nHotel',
    'duration': '40-45 mins',
  },
  // {
  //   'name': '43% OFF',
  //   'off': 'UPTO ₹300',
  //   'img': 'assets/images/food_images/pizza.jpeg',
  //   'foodname': 'Surti',
  //   'duration': '20-30 mins',
  // },
  // {
  //   'name': '52% OFF',
  //   'off': 'ABOVE ₹150',
  //   'img': 'assets/images/food_images/pizza.jpeg',
  //   'foodname': 'Vk icecream',
  //   'duration': '50-55 mins',
  // },
];
List imagelist1 = [
  {'fdnam': 'Momos', 'image': 'assest/images/food_images/momos.jpeg'},
  {'fdnam': 'Rolls', 'image': 'assest/images/food_images/roll.png'},
  {'fdnam': 'Sandwich', 'image': 'assest/images/food_images/sandwich.png'},
  {'fdnam': 'Shakes', 'image': 'assest/images/food_images/chocolate.jpeg'},
  {'fdnam': 'Dosa', 'image': 'assest/images/food_images/dosa.png'},
  {'fdnam': 'Noodles', 'image': 'assest/images/food_images/noodles.jpeg'},
  {'fdnam': 'Cake', 'image': 'assest/images/food_images/cake.png'},
  {'fdnam': 'Kachori', 'image': 'assest/images/food_images/kachori.jpeg'},
  {'fdnam': 'Salad', 'image': 'assest/images/food_images/salad.jpeg'},
  {'fdnam': 'Vada', 'image': 'assest/images/food_images/vada.png'},
];
List imagelist = [
  {'foodName': 'Pizza', 'image': 'assest/images/food_images/pizza.jpeg'},
  {'foodName': 'Burger', 'image': 'assest/images/food_images/burger.jpeg'},
  {'foodName': 'Samosa', 'image': 'assest/images/food_images/samosa.jpeg'},
  {'foodName': 'Pavbhaji', 'image': 'assest/images/food_images/pavbhaji.jpeg'},
  {'foodName': 'Chinese', 'image': 'assest/images/food_images/chinese.png'},
  {'foodName': 'Biryani', 'image': 'assest/images/food_images/biryani.jpeg'},
  {'foodName': 'Poori', 'image': 'assest/images/food_images/poori.png'},
  {'foodName': 'Pasta', 'image': 'assest/images/food_images/pasta.jpeg'},
  {'foodName': 'Lassi', 'image': 'assest/images/food_images/lassi.png'},
  {'foodName': 'Dhokla', 'image': 'assest/images/food_images/dhokla.jpeg'},
];
import 'package:flutter/material.dart';
import 'package:happy_bakery/models/recommended.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Happy Bakery',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xFFF3F1F8),
        body: SafeArea(
            child: Column(
          children: [
            // Container(
            //   width: double.infinity,
            //   margin: EdgeInsets.only(left: 20),
            //   child: Text(
            //     'Happy\nBakery Apps',
            //     style: TextStyle(color: Color(0xFFFF9D72), fontWeight: FontWeight.bold, fontSize: 25),
            //     textAlign: TextAlign.start,
            //   ),
            //   decoration: BoxDecoration(
                
            //   ),
            // ),
            Container(
              child: const Center(
                child: Text(
                  'Hello Again!',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black54),
                ),
              ),
              margin: const EdgeInsets.only(top: 100),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5),
              child: const Text(
                'Wellcome back you’ve\nbeen missed',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF726F6F),
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 56, left: 45, right: 45),
              child: TextField(
                style: const TextStyle(fontSize: 15, color: Color(0xFF828282)),
                autofocus: false,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                      top: 0, left: 15, right: 15, bottom: 0),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Enter username',
                  hintStyle: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF828282),
                      fontWeight: FontWeight.w100),
                  border: InputBorder.none,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, left: 45, right: 45),
              child: TextField(
                style: const TextStyle(fontSize: 15, color: Color(0xFF828282)),
                autofocus: false,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.only(
                      top: 0, left: 15, right: 15, bottom: 0),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF828282),
                      fontWeight: FontWeight.w100),
                  border: InputBorder.none,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.only(right: 45),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot password',
                    style: TextStyle(fontSize: 12, color: Color(0xFF828282)),
                    textAlign: TextAlign.end,
                  )),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 20, left: 45, right: 45),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LandingPage()),
                  );
                },
                child: const Text('Sign In'),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFFFF9D72),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9)
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 35, bottom: 20),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'Or continue with',
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF828282)),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Ink(
                       decoration: const ShapeDecoration(
                        color: Colors.white,
                        shape: CircleBorder(),
                        ),
                        padding: EdgeInsets.all(3),
                      child: IconButton(
                        onPressed: (){},
                        icon: Image.asset(
                          'images/google.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Ink(
                       decoration: const ShapeDecoration(
                        color: Colors.white,
                        shape: CircleBorder(),
                        ),
                        padding: EdgeInsets.all(3),
                      child: IconButton(
                        onPressed: (){},
                        icon: Image.asset(
                          'images/facebook.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Ink(
                       decoration: const ShapeDecoration(
                        color: Colors.white,
                        shape: CircleBorder(),
                        ),
                        padding: EdgeInsets.all(3),
                      child: IconButton(
                        onPressed: (){},
                        icon: Image.asset(
                          'images/twitter.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            )
          ],
        )));
  }
}

class LandingPage extends StatelessWidget {
  // final RecommendedBakery recommend;
  
  const LandingPage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF3F1F8),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 22, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      size: 35,
                      color: Color(0xff424242),
                    ),
                  )),
                  Container(
                    child: Text(
                      'Wellcome Reza Faisal',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Container(
                      // padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                          color: Color(0xff654062),
                          borderRadius: BorderRadius.circular(9)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.tune, color: Colors.white)))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 36, left: 20, right: 20),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                  color: Color(0xFFFF9D72),
                  borderRadius: BorderRadius.circular(9)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '-50% off the full\nprice of all\nbread',
                    style: TextStyle(color: Colors.white),
                  ),
                  Image.asset(
                    'images/bread1.png',
                    height: 80,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    width: double.infinity,
                    child: Text(
                      'Recommended',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFFF9D72),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(children: <Widget>[
                        for (var i = 0; i < RecommendBakeryList.length; i++)
                          // Text('haha')
                          BakeryList(
                              image: RecommendBakeryList[i].image,
                              name: RecommendBakeryList[i].name,
                              price: RecommendBakeryList[i].price),
                      ]),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    width: double.infinity,
                    child: Text(
                      'Popular Menu',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFFF9D72),
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(children: <Widget>[
                        for (var i = 0; i < RecommendBakeryList.length; i++)
                          // Text('haha')
                          BakeryList(
                              image: RecommendBakeryList[i].image,
                              name: RecommendBakeryList[i].name,
                              price: RecommendBakeryList[i].price),
                      ]),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 100,
              child: ElevatedButton(
                onPressed: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.arrow_forward, color: Color(0xFFFF9D72),),
                    Text('View all', style: TextStyle(color: Color(0xFF424242), fontSize: 12),)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9)
                  ),

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BakeryList extends StatefulWidget {
  final String image;
  final String name;
  final String price;

  const BakeryList({
    required this.image,
    required this.name,
    required this.price,
  });

  _BakeryListState createState() => _BakeryListState();
}

class _BakeryListState extends State<BakeryList> {
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 110,
      child: InkWell(
        onTap: () {},
        child: Card(
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(color: Colors.white)),
          // margin: EdgeInsets.all,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  widget.image,
                  height: 60,
                ),
              ),
              Text(
                widget.name,
                style: TextStyle(color: Color(0xFF424242), fontSize: 12),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 9, bottom: 9),
                child: Container(
                  width: double.infinity,
                  child: Text(
                    widget.price,
                    style: TextStyle(
                        color: Color(0xFFFF9D72),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class DashboardPage extends StatelessWidget {
//   const DashboardPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       physics: NeverScrollableScrollPhysics(),
//       child: MaterialApp(
//         home: Scaffold(
//             resizeToAvoidBottomInset: true,
//             appBar: AppBar(
//               elevation: 0,
//               backgroundColor: Colors.transparent,
//               leading: const Icon(
//                 Icons.menu,
//                 color: Colors.black,
//               ),
//               title: TextField(
//                 decoration: InputDecoration(
//                   hintText: "Search",
//                   hintStyle: TextStyle(
//                     color: Colors.black.withAlpha(120),
//                   ),
//                   border: InputBorder.none,
//                 ),
//                 onChanged: (String keyword) {},
//               ),
//             ),
//             body: Column(children: [
//               const Text('Welcome Reza'),
//               Container(
//                 width: double.infinity,
//                 color: const Color(0xFFFF9D72),
//                 height: 97,
//                 margin: const EdgeInsets.symmetric(horizontal: 20),
//                 child: Row(
//                     mainAxisSize: MainAxisSize.max,
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       const Text(
//                         '-50% off the full\nprice of\nall bread',
//                         overflow: TextOverflow.clip,
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                       Image.asset('images/bread1.png')
//                     ]),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               SizedBox(
//                 width: double.infinity,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     const Text(
//                       'Recommended',
//                       style: TextStyle(color: Color(0xFF654062)),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: [
//                           cardMenu(
//                               img: 'images/bread1.png',
//                               title: 'Roti 1',
//                               price: 15),
//                           cardMenu(
//                               img: 'images/bread2.png',
//                               title: 'Roti 2',
//                               price: 18),
//                           cardMenu(
//                               img: 'images/bread2.png',
//                               title: 'Roti 2',
//                               price: 18),
//                           cardMenu(
//                               img: 'images/bread2.png',
//                               title: 'Roti 2',
//                               price: 18),
//                           cardMenu(
//                               img: 'images/bread2.png',
//                               title: 'Roti 2',
//                               price: 18),
//                           cardMenu(
//                               img: 'images/bread2.png',
//                               title: 'Roti 2',
//                               price: 18),
//                           cardMenu(
//                               img: 'images/bread2.png',
//                               title: 'Roti 2',
//                               price: 18),
//                           cardMenu(
//                               img: 'images/bread2.png',
//                               title: 'Roti 2',
//                               price: 18),
//                           cardMenu(
//                               img: 'images/bread2.png',
//                               title: 'Roti 2',
//                               price: 18),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 50,
//                     ),
//                     const Text(
//                       'Popular',
//                       style: TextStyle(color: Color(0xFF654062)),
//                     ),
//                     const SizedBox(
//                       height: 20,
//                     ),
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: [
//                           cardMenu(
//                               img: 'images/bread1.png',
//                               title: 'Roti 1',
//                               price: 15),
//                           cardMenu(
//                               img: 'images/bread1.png',
//                               title: 'Roti 1',
//                               price: 15),
//                           cardMenu(
//                               img: 'images/bread1.png',
//                               title: 'Roti 1',
//                               price: 15),
//                           cardMenu(
//                               img: 'images/bread2.png',
//                               title: 'Roti 2',
//                               price: 18),
//                           cardMenu(
//                               img: 'images/bread2.png',
//                               title: 'Roti 2',
//                               price: 18),
//                           cardMenu(
//                               img: 'images/bread2.png',
//                               title: 'Roti 2',
//                               price: 18),
//                           cardMenu(
//                               img: 'images/bread2.png',
//                               title: 'Roti 2',
//                               price: 18),
//                           cardMenu(
//                               img: 'images/bread2.png',
//                               title: 'Roti 2',
//                               price: 18),
//                           cardMenu(
//                               img: 'images/bread2.png',
//                               title: 'Roti 2',
//                               price: 18),
//                           cardMenu(
//                               img: 'images/bread2.png',
//                               title: 'Roti 2',
//                               price: 18),
//                           cardMenu(
//                               img: 'images/bread2.png',
//                               title: 'Roti 2',
//                               price: 18),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(),
//             ])),
//       ),
//     );
//   }

//   Container cardMenu(
//       {required String img, required String title, required int price}) {
//     return Container(
//       height: 110,
//       width: 89,
//       margin: const EdgeInsets.symmetric(horizontal: 10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: const BorderRadius.only(
//             topLeft: Radius.circular(9),
//             topRight: Radius.circular(9),
//             bottomLeft: Radius.circular(9),
//             bottomRight: Radius.circular(9)),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 1,
//             blurRadius: 1,
//             offset: const Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       child: Column(children: [
//         Image.asset(img),
//         Text(
//           title,
//           textAlign: TextAlign.justify,
//           style: const TextStyle(color: Color(0xFF424242)),
//         ),
//         Text(
//           '\$ $price',
//           textAlign: TextAlign.end,
//           style: const TextStyle(color: Color(0xFFFF9D72)),
//         ),
//       ]),
//     );
//   }
// }

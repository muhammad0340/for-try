import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final heroTag;
  SecondPage({this.heroTag});

  @override
  State<SecondPage> createState() => _SecondPageState(heroTag: heroTag);
}

class _SecondPageState extends State<SecondPage> {
  final heroTag;
  _SecondPageState({this.heroTag});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: heroTag,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(heroTag),
                fit: BoxFit.cover,
              )),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 15,
            right: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 3.0,
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15),
                          child: Container(
                            height: 115,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.pink,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                              image: DecorationImage(
                                image: AssetImage("asset/ars.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "muhammad",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "arslan",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width - 160,
                              child: Text(
                                "i am muhammad arsalan of gader chakdara.i am  studing in university of malakana ",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      height: 1.0,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "6500",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            FloatingActionButton(
                              onPressed: () {},
                              mini: true,
                              child: Center(
                                child: Icon(Icons.arrow_forward_ios,
                                    size: 10, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 50,
            top: MediaQuery.of(context).size.height / 2,
            child: Container(
              height: 35,
              width: 125,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
              ),
              child: Row(
                children: [
                  Text(
                    "MUHAMMAD",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 3,
                  ),

                  Icon(Icons.arrow_forward,color: Colors.white,),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

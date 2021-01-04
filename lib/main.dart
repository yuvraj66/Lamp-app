import 'package:flutter/material.dart';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: size.height,
            width: size.width,
            padding: EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 20,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
                colors: [
                  Color(0xff6E6A6A),
                  Color(0xff3B393B),
                  Color(0xff2F2E30),
                  Color(0xff282729),
//              Color(0xff191819),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      iconSize: 40,
                      icon: Icon(
                        Icons.list,
                        color: Color(0xffF7F6F5),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xffF7F6F5),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffACAAA9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        iconSize: 20,
                        icon: Icon(
                          Icons.favorite,
                          color: Color(0xffF7F6F5),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  "Welcome,rayen",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xffF7F6F5),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "What would you like buying today",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white60,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff424142),
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: Icon(Icons.search, color: Colors.white),
                  ),
                ),
                SizedBox(height: 40),
                TabBar(
                  indicator: BoxDecoration(
                    color: Color(0xff282729),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  unselectedLabelColor: Colors.white30,
                  tabs: [
                    Tab(text: "Day"),
                    Tab(text: "Unique"),
                    Tab(text: "Shades"),
                    Tab(text: "Rgb"),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 200,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 2,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(right: 20),
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                list(
                                  image:
                                      "https://thumbs.dreamstime.com/b/white-table-lamp-background-178749232.jpg",
                                  text: "Tripod",
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget list({image, text}) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(42, 10, 0, 0),
              child: Image(
                height: 100,
                image: NetworkImage(image),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                42,
                5,
                0,
                0,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xff282729),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(2),
              margin: EdgeInsets.only(left: 50),
              width: 150,
              child: FlatButton(
                splashColor: Color(0xff1D0031),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Add to cart",
                      style: TextStyle(
                        color: Colors.white,
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
// Icon(
//               icons,
//               color: Colors.black,
//             ),

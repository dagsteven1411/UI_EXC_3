import 'package:flutter/material.dart';

void main() {
  runApp(ExoC3());
}

class ExoC3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: ExoC3HomePage(),
    );
  }
}

class ExoC3HomePage extends StatefulWidget {
  @override
  _ExoC3HomePageState createState() => _ExoC3HomePageState();
}

class _ExoC3HomePageState extends State<ExoC3HomePage> {
  List icontab = [
    Icons.home,
    Icons.search,
    Icons.favorite,
    Icons.notifications,
    Icons.person
  ];
  List texttab = [
    "Home",
    "Search",
    "Favorite",
    "Notification",
    "Profile",
  ];

  int indexo, taillo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        width: 500,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                width: 330,
                height: 95,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: icontab.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(5, 20, 5, 20),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 28,
                          ),
                          child: GestureDetector(
                            child: Container(
                              height: 100,
                              child: Column(
                                children: [
                                  Icon(
                                    icontab[index],
                                    size: taillo == index ? 35 : 30,
                                    color: indexo == index
                                        ? Colors.blue
                                        : Colors.black,
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    texttab[index],
                                    style: TextStyle(
                                      color: indexo == index
                                          ? Colors.blue
                                          : Colors.black,
                                      fontSize: taillo == index ? 12 : 11,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                indexo = index;
                                taillo = index;
                              });
                            },
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

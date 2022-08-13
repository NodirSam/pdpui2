import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id="home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _listItem=[
    "assets/images/images1.jpg",
    "assets/images/images2.jpg",
    "assets/images/images3.jpg",
    "assets/images/images4.jpg",
    "assets/images/images5.jpg",
    "assets/images/images1.jpg",
    "assets/images/images2.jpg",
    "assets/images/images3.jpg",
    "assets/images/images4.jpg",
    "assets/images/images5.jpg",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Apple Products"),
        backgroundColor: Colors.deepOrange,
        actions: [
          Padding(
              padding: EdgeInsets.all(10),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text("7", style: TextStyle(fontSize: 20),),
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [

            //#header
            Container(
              height: 240,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage("assets/images/images1.jpg"),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(0.3),
                        Colors.black.withOpacity(0.1),
                      ]
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Lifesstyle sale", style: TextStyle(color: Colors.white, fontSize: 40),),
                    SizedBox(height: 30,),
                    Container(
                      height: 50,
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text("Shop Now", style: TextStyle(color: Colors.grey[900]!, fontSize: 20),),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),

            //#body
            Expanded(
                child: GridView.count(
                  crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 1,
                  children:
                    _listItem.map((item) => cellOfList(item)).toList(),
                )
            )

          ],
        ),
      ),
    );
  }

  Widget cellOfList(String item){
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage(item),
            fit: BoxFit.cover,
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.heart_broken, color: Colors.red, size: 40,),
          ],
        ),
      ),
    );
  }
}

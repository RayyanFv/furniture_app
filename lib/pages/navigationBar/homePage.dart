import 'package:flutter/material.dart';
import 'package:furniture_app/data/data.dart';
import 'package:google_fonts/google_fonts.dart';


class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  final data = Product('bayam', '2.000', 'banyak', 'hm', 'angjayani banh');

  @override
  Widget build(BuildContext context) {
    Widget header(){
      return Container(
        margin: EdgeInsets.only(top: 24, left: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hi, Rayyaan',
                    style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),),
                  Text('Yuk donasi buat mereka yang membutuhkan!',
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                    ),)
                ],
              ),
            ),
          ],
        ),
      );
    }
    Widget categories(){
      return Container(
        margin: EdgeInsets.only(top: 24),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: 24),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal:30,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black12,
                ),
                child: Text('All'),
              ),
              SizedBox(width: 20),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal:24,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.black12
                  ),
                  color: Colors.transparent,
                ),
                child: Text('Living Room'),
              ),
              SizedBox(width: 20,),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal:8,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.black12
                  ),
                  color: Colors.transparent,
                ),
                child: Text('Bedroom'),
              ),
              SizedBox(width: 20,),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal:24,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Colors.black12
                  ),
                  color: Colors.transparent,
                ),
                child: Text('Dining Room'),
              ),
              SizedBox(width: 20,),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal:24,
                  vertical: 12,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                      color: Colors.black12
                  ),
                  color: Colors.transparent,
                ),
                child: Text('Kitchen'),
              ),
            ],
          ),
        ),
      );
    }
    Widget product(){
      return Container(
        padding: EdgeInsets.all(10),
        child: GridView.count(crossAxisCount: 2,
          children: [
            Card(
              elevation: 2,
              shadowColor: Colors.black12,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Hero(tag: data.image, child: SizedBox(
                    width: 150,
                    child: Image.asset(data.image),
                  ))
                ],
              ),
            ),
            Card(
              elevation: 2,
              shadowColor: Colors.black12,
              color: Colors.black12,
              shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.black12
              ),
              ),
            ),
          ],),


      );
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu, color: Colors.black),

        title: const Text("Home", style: TextStyle(color: Colors.black),),
      ),

    body: Container(
      padding: EdgeInsets.all(10),
      child: GridView.count(crossAxisCount: 2,
        children: [
          Card(
            elevation: 2,
            shadowColor: Colors.black12,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Hero(tag: data.image, child: SizedBox(
                  width: 150,
                  child: Image.asset(data.image),
                ))
              ],
            ),
          ),
          Card(
            elevation: 2,
            shadowColor: Colors.black12,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.black12
              ),
            ),
          ),
        ],),


    )
    );



    /*
      body: Container(
        margin: EdgeInsets.only(top: 24, left: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Discover the most modern furniture',
                    style: GoogleFonts.poppins(
                        fontSize: 22,
                    ),),
                ],
              ),
            ),
          ],
        ),

      ),

    );
*/




  }
}

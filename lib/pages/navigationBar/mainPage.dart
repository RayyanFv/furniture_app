import 'package:flutter/material.dart';
import 'package:furniture_app/pages/navigationBar/homePage.dart';
import 'package:furniture_app/pages/navigationBar/profilePage.dart';
import 'package:furniture_app/pages/navigationBar/favoritePage.dart';
import 'package:furniture_app/pages/navigationBar/shopPage.dart';

class mainPage extends StatefulWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget pedulyButton() {
      return FloatingActionButton(onPressed: () {},
        backgroundColor: Colors.red,
        child: Image.asset('assets/logo.png',
          width: 50,)
        ,);
    }

    Widget customBottomNavBar(){
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          color: Colors.red,
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  print(value);
                  currentIndex = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(icon: Image.asset('assets/Home.png',
                  width: 21,),
                    label: ''),
                BottomNavigationBarItem(icon: Image.asset('assets/Search.png', width: 20,),label: ''),
                BottomNavigationBarItem(icon: Image.asset('assets/document.png', width: 20,),label: ''),
                BottomNavigationBarItem(icon: Image.asset('assets/Profile.png', width: 20,),label: ''),
              ]),
        ),
      );
    }

    Widget body(){
      switch (currentIndex){
        case 0:
          return homePage();
        case 1:
          return shopPage();
        case 2:
          return favoritePage();
        case 3:
          return profilePage();

        default: return homePage();
      }
    }

    return Scaffold(
      floatingActionButton: pedulyButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked ,
      bottomNavigationBar: customBottomNavBar(),
      body: body(),
    );
  }
}
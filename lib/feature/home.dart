import 'package:flutter/material.dart';
import 'package:gpa_calculator/product/utility/constants/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedTab = 0;

  List _pages = [
    Center(
      child: Text(
        "Calculate",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
    ),
    Center(
      child: Text(
        "Add School",
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
    ),
    Center(
      child: Text(
        "Saved",
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
    ),
  ];

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text("GPA Calculator"),
      ),
      body: _pages[_selectedTab],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _selectedTab = 1;
          });
        },
        child: Icon(
          Icons.add,
          color: _selectedTab == 1
              ? ColorData.backgroundColor
              : ColorData.textColor,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    _selectedTab = 0;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.school_rounded,
                      color: _selectedTab == 0
                          ? ColorData.backgroundColor
                          : ColorData.textColor,
                    ),
                    Text("Home",
                        style: TextStyle(
                          color: _selectedTab == 0
                              ? ColorData.backgroundColor
                              : ColorData.textColor,
                        )),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    _selectedTab = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.bookmark_outlined,
                      color: _selectedTab == 2
                          ? ColorData.backgroundColor
                          : ColorData.textColor,
                    ),
                    Text("Home",
                        style: TextStyle(
                          color: _selectedTab == 2
                              ? ColorData.backgroundColor
                              : ColorData.textColor,
                        )),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}

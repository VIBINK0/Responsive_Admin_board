// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_project_one/util/coffee_list.dart';
import 'package:flutter_project_one/util/coffee_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //ontap
  void coffeeSelected(int index) {
    setState(() {
      for (int i = 0; i < coffeevariety.length; i++) {
        coffeevariety[i][1] = false;
      }

      coffeevariety[index][1] = true;
    });
  }

  //coffee types
  final List coffeevariety = [
    ['Cappucino', true],
    ['Latte', false],
    ['Black', false],
    ['Cold', false],
    ['No Sugar', false],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.person),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      //bottom navigation bar

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),

      //find the best coffee for you

      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'FIND THE BEST COFFEE FOR U',
                  style: TextStyle(fontSize: 40),
                ),
              ),

              SizedBox(height: 20),

              //search bar

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade600)),
                    hintText: 'Find Your Coffee',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),

              //coffee list

              SizedBox(height: 30),
              SizedBox(
                height: 50,
                // color: Colors.red,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffeevariety.length,
                  itemBuilder: (context, index) {
                    return CoffeeList(
                      coffieName: coffeevariety[index][0],
                      isselcted: coffeevariety[index][1],
                      ontap: () => coffeeSelected(index),
                    );
                  },
                ),
              ),

              SizedBox(
                height: 388,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CoffeeProfile(
                      price: '3.00',
                      coffeeInc: 'With Flavour Milk',
                      coffeeName: 'Cappucino',
                      imageurl:
                          'https://images.unsplash.com/photo-1507133750040-4a8f57021571?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
                    ),
                    CoffeeProfile(
                      price: '4.00',
                      coffeeInc: 'With alomed Milk',
                      coffeeName: 'Latte',
                      imageurl:
                          'https://images.unsplash.com/photo-1497636577773-f1231844b336?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
                    ),
                    CoffeeProfile(
                      price: '2.50',
                      coffeeInc: 'No Milk',
                      coffeeName: 'Black',
                      imageurl:
                          'https://images.unsplash.com/photo-1512568400610-62da28bc8a13?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      //coffee profile
    );
  }
}

// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Design Tutorial 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.amber,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 2;
  int tab_index = 0;

  String title() {
    if (tab_index == 0) {
      return 'Home';
    } else if (tab_index == 1) {
      return 'Discovery';
    } else if (tab_index == 2) {
      return 'Bookmark';
    } else if (tab_index == 3) {
      return 'Alarm';
    }
    return 'Profile';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          title(),
          style: const TextStyle(
            color: Colors.black, // *Cara untuk mengubah warna title (2)
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        // titleTextStyle: const TextStyle( // *Cara untuk mengubah warna title (3)
        //     color: Colors.black,
        //     fontSize: 32,
        // ),
        // foregroundColor: Colors.black, // *Cara untuk mengubah warna title (1)
      ),
      body: GridView(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // *Jumlah Column
          mainAxisSpacing: 12, // *Margin antar Widget (Main)
          crossAxisSpacing: 12, // *Margin antar Widget (Cross)
          childAspectRatio: 1 / 1.2, // *Ukuran Widget dalam perbandingan
        ),
        children: [
          // *Tile 1
          GestureDetector(
            // *Untuk merespon masukan dari pengguna
            onTap: () {
              setState(() {
                index = 1;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: index == 1 ? Colors.amber : Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: index == 1 ? 4 : 1,
                    offset:
                        index == 1 ? const Offset(2, 4) : const Offset(1, 2),
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Expanded(
                    child: Icon(
                      Icons.drive_eta,
                      color: Colors.black,
                      size: 72,
                    ),
                  ),
                  const Text(
                    'Taxi',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    '24 Hours',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: index == 1 ? Colors.black87 : Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
          // *Tile 2
          GestureDetector(
            onTap: () {
              setState(() {
                index = 2;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: index == 2 ? Colors.amber : Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: index == 2 ? 4 : 1,
                    offset:
                        index == 2 ? const Offset(2, 4) : const Offset(1, 2),
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Expanded(
                    child: Icon(
                      Icons.bed_sharp,
                      color: Colors.black,
                      size: 72,
                    ),
                  ),
                  const Text(
                    'Room',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'We\'re ready to service',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: index == 2 ? Colors.black87 : Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
          // *Tile 3
          GestureDetector(
            onTap: () {
              setState(() {
                index = 3;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: index == 3 ? Colors.amber : Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: index == 3 ? 4 : 1,
                    offset:
                        index == 3 ? const Offset(2, 4) : const Offset(1, 2),
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Expanded(
                    child: Icon(
                      Icons.meeting_room_sharp,
                      color: Colors.black,
                      size: 72,
                    ),
                  ),
                  const Text(
                    'Meeting Room',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Efficient to get new Idea',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: index == 3 ? Colors.black87 : Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
          // *Tile 4
          GestureDetector(
            onTap: () {
              setState(() {
                index = 4;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: index == 4 ? Colors.amber : Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: index == 4 ? 4 : 1,
                    offset:
                        index == 4 ? const Offset(2, 4) : const Offset(1, 2),
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Expanded(
                    child: Icon(
                      Icons.fastfood,
                      color: Colors.black,
                      size: 72,
                    ),
                  ),
                  const Text(
                    'Food & Drinks',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'It\'s must be delicious',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: index == 4 ? Colors.black87 : Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
          // *Tile 5
          GestureDetector(
            onTap: () {
              setState(() {
                index = 5;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: index == 5 ? Colors.amber : Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: index == 5 ? 4 : 1,
                    offset:
                        index == 5 ? const Offset(2, 4) : const Offset(1, 2),
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Expanded(
                    child: Icon(
                      Icons.pool_sharp,
                      color: Colors.black,
                      size: 72,
                    ),
                  ),
                  const Text(
                    'Swimming Pool',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Our feature to make you enjoy',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: index == 5 ? Colors.black87 : Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
          // *Tile 6
          GestureDetector(
            onTap: () {
              setState(() {
                index = 6;
              });
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: index == 6 ? Colors.amber : Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(4)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: index == 6 ? 4 : 1,
                    offset:
                        index == 6 ? const Offset(2, 4) : const Offset(1, 2),
                    color: Colors.black.withOpacity(0.25),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Expanded(
                    child: Icon(
                      Icons.garage_sharp,
                      color: Colors.black,
                      size: 72,
                    ),
                  ),
                  const Text(
                    'Garage',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Easy and safe',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: index == 6 ? Colors.black87 : Colors.grey,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: tab_index,
        showUnselectedLabels: true,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        onTap: (i) {
          setState(() {
            tab_index = i;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.place_outlined),
            label: 'Discovery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Alarm',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

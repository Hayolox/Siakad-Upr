import 'package:flutter/material.dart';
import 'package:siakad/pages/home/home.dart';
import 'package:siakad/pages/news/news.dart';
import 'package:siakad/pages/study/study.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;
  Widget customBottomNav() {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (value) {
        setState(() {
          index = value;
        });
      },
      items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(
            Icons.home,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Berita',
          icon: Icon(
            Icons.newspaper_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Hasil Studi',
          icon: Icon(
            Icons.auto_graph_outlined,
          ),
        ),
      ],
    );
  }

  List listBody = [
    HomePage(),
    NewsPage(),
    StudyPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: customBottomNav(),
      body: listBody[index],
    );
  }
}

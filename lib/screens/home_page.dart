import 'package:flutter/material.dart';
import 'package:learn_japanese/screens/family_members_page.dart';
import 'package:learn_japanese/screens/numbers_page.dart';
import 'package:learn_japanese/screens/phrases_page.dart';
import '../components/categoty_item.dart';
import 'colors_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 19, 20, 1),
      appBar: AppBar(
        title: Text('Japanese Teacher'),
        backgroundColor: Color.fromRGBO(0, 19, 20, 1),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return NumbersPage();
              }));
            },
            text: 'Number',
            color: Color(0xffEF9235),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return FamilyMembersPage();
              }));
            },
            text: 'Family Members',
            color: Color(0xff558B37),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return ColorsPage();
              }));
            },
            text: 'Colors',
            color: Color(0xff79359F),
          ),
          Category(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: Color(0xff50ADC7),
          ),
        ],
      ),
    );
  }
}

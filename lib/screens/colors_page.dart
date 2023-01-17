import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/list_item.dart';
import '../models/item.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<Item> colors = const [
    Item(
        sound: 'black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'black'),
    Item(
        sound: 'brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'chairo',
        enName: 'brown'),
    Item(
        sound: 'dusty_yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'hokori ppoi kiiro',
        enName: 'dusty yellow'),
    Item(
        sound: 'gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'gurē',
        enName: 'Gray'),
    Item(
        sound: 'green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'midori',
        enName: 'green'),
    Item(
        sound: 'red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red'),
    Item(
        sound: 'white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'shiroi',
        enName: 'White'),
    Item(
        sound: 'yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Ki',
        enName: 'Yellow'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Colors'),
          backgroundColor: Color.fromRGBO(0, 19, 20, 1),
        ),
        //using list view builder
        body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return ListItem(
              item: colors[index],
              color: Color(0xff79359F),
              itemType: 'colors',
            );
          },
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/list_item.dart';
import '../models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<Item> familyMembers = const [
    Item(
        sound: 'father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Otōsan',
        enName: 'Father'),
    Item(
        sound: 'daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'musume',
        enName: 'Daughter'),
    Item(
        sound: 'grand_father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'ojīsan',
        enName: 'Grandfather'),
    Item(
        sound: 'mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'hahaoya',
        enName: 'Mother'),
    Item(
        sound: 'grand_mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'sobo',
        enName: 'Grandmother'),
    Item(
        sound: 'older_bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: ' Nīsan',
        enName: 'Older brother'),
    Item(
        sound: 'older_sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'onēsan',
        enName: 'Older Sister'),
    Item(
        sound: 'son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'musuko',
        enName: 'son'),
    Item(
        sound: 'younger_brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Otōto',
        enName: 'younger brother'),
    Item(
        sound: 'younger_sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'imōto',
        enName: 'younger sister'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Family Members'),
          backgroundColor: Color.fromRGBO(0, 19, 20, 1),
        ),
        //using list view builder
        body: ListView.builder(
          itemCount: familyMembers.length,
          itemBuilder: (context, index) {
            return ListItem(
              item: familyMembers[index],
              color: Color(0xff558B37),
              itemType: 'family_members',
            );
          },
        ));
  }
}

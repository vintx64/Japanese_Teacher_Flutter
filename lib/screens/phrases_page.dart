import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/list_item.dart';
import '../models/item.dart';

/** are_you_coming.wav
programming_is_easy.wav
dont_forget_to_subscribe.wav
what_is_your_name.wav
how_are_you_feeling.wav
where_are_you_going.wav
i_love_anime.wav
yes_im_coming.wav
i_love_programming.wav
 */
class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<Item> phrases = const [
    Item(
        sound: 'are_you_coming.wav',
        jpName: 'Kimasu ka',
        enName: 'are you coming'),
    Item(
        sound: 'programming_is_easy.wav',
        jpName: 'puroguramingu wa kantandesu',
        enName: 'Programming is easy'),
    Item(
        sound: 'dont_forget_to_subscribe.wav',
        jpName: 'kōdoku suru koto o wasurenaide kudasai',
        enName: 'Dont forget to subscribe'),
    Item(
        sound: 'what_is_your_name.wav',
        jpName: 'namae wa nandesu ka',
        enName: 'What is your name?'),
    Item(
        sound: 'how_are_you_feeling.wav',
        jpName: 'go kibun wa ikagadesu ka',
        enName: 'How are you feeling?'),
    Item(
        sound: 'where_are_you_going.wav',
        jpName: 'Doko ni iku no',
        enName: 'Where are you going?'),
    Item(
        sound: 'i_love_anime.wav',
        jpName: 'watashi wa anime ga daisukidesu',
        enName: 'I love Anmie'),
    Item(
        sound: 'yes_im_coming.wav',
        jpName: 'Hai, kimasu',
        enName: 'Yes I am coming'),
    Item(
        sound: 'i_love_programming.wav',
        jpName: 'Puroguramingu ga daisuki',
        enName: 'I love programming'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Phrases'),
          backgroundColor: Color.fromRGBO(0, 19, 20, 1),
        ),
        //using list view builder
        body: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            return ListItem(
              item: phrases[index],
              color: Color(0xff50ADC7),
              itemType: 'pharses',
            );
          },
        ));
  }
}

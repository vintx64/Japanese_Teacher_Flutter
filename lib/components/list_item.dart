import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:learn_japanese/models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      required this.item,
      required this.color,
      required this.itemType});
  final Item item;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return item.image == null
        ? Container(
            height: 100,
            color: color,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.jpName,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        item.enName,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {
                    try {
                      final player = AudioPlayer();
                      player.play(
                          AssetSource('sounds/' + itemType + '/' + item.sound));
                    } catch (ex) {
                      print(ex);
                    }
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ],
            ),
          )
        : Container(
            height: 100,
            color: color,
            child: Row(
              children: [
                Container(
                    color: Color(0xffFFF6DC), child: Image.asset(item.image!)),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        item.jpName,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        item.enName,
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                IconButton(
                  onPressed: () {
                    try {
                      final player = AudioPlayer();
                      player.play(
                          AssetSource('sounds/' + itemType + '/' + item.sound));
                    } catch (ex) {
                      print(ex);
                    }
                  },
                  icon: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                    size: 30,
                  ),
                )
              ],
            ),
          );
  }
}

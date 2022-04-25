import 'package:flutter/material.dart';
import 'package:golpo/screens/home_screen.dart';
import 'package:golpo/widgets/custom_text.dart';

class PlayerDetails extends StatefulWidget {
  const PlayerDetails({Key? key}) : super(key: key);

  @override
  State<PlayerDetails> createState() => _PlayerDetailsState();
}

class _PlayerDetailsState extends State<PlayerDetails> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.expand_more,
              color: Colors.white,
              size: 26,
            )),
        title: Column(
          children: [
            CustomText(
              text: "PLAYING FROM ALBUM",
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            CustomText(
              text: "The Power of Positive Thinking: Good day",
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              size: 26,
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Image.network(
              "https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80",
              height: height * 0.4,
              width: double.infinity,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "New York Jazz",
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    CustomText(
                      text: "Everyday Jazz Academy",
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      size: 30,
                      color: Colors.white,
                    ))
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Slider(
              value: 0.5,
              onChanged: (v) {},
              min: 0,
              max: 1,
              inactiveColor: Colors.grey,
              activeColor: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shuffle,
                      size: 28,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_previous,
                      size: 34,
                      color: Colors.white,
                    )),
                Icon(
                  Icons.play_circle_fill_outlined,
                  size: 60,
                  color: Colors.white,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_next,
                      size: 34,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.loop_outlined,
                      size: 28,
                      color: Colors.white,
                    )),
              ],
            )
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../components/mytextwedget.dart';
import '../components/mywedget.dart';
import '../main.dart';

class Laptop extends StatefulWidget {
  const Laptop({super.key});

  @override
  State<Laptop> createState() => _LaptopState();
}

class _LaptopState extends State<Laptop> {
  String MyGroupVal = "";
  bool MyVal = false;
  bool myval = false;
  bool val = false;
  bool VAL = false;
  List MyListItem = ["1", "2", "3", "4"];
  String SelectedItem = "1";
  final VideoURL = "https://www.youtube.com/watch?v=f_7JqPDWhfw";
  late YoutubePlayerController _controller;
  @override
  void initState() {
    final VideoID = YoutubePlayer.convertUrlToId(VideoURL);
    _controller = YoutubePlayerController(initialVideoId: VideoID!);
    flags:
    YoutubePlayerFlags(
      autoPlay: false,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 156, 161),
        title: Text(
          "SAMSUNG LAPTOP ",
          style: TextStyle(
              fontFamily: "DancingScript-VariableFont_wght", fontSize: 20),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 166, 230, 248),
          Color.fromARGB(255, 0, 156, 161)
        ])),
        child: ListView(
          children: [
            MyText(
              MyFontFamily: "Combo-Regular",
              MyTextSize: 40,
              MyTextt: "SAMSUNG LAPTOP",
            ),
            SizedBox(
              height: 20,
            ),
            YoutubePlayerBuilder(
              player: YoutubePlayer(controller: _controller),
              builder: (context, player) {
                return Column();
              },
            ),
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              onReady: () {
                print("IM READY");
              },
              bottomActions: [
                CurrentPosition(),
                ProgressBar(
                  isExpanded: true,
                  colors: ProgressBarColors(
                      backgroundColor: Colors.grey,
                      bufferedColor: Colors.greenAccent,
                      handleColor: Colors.black,
                      playedColor: Colors.blueGrey),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MyContainer(
              OnTap: () {},
              images:
                  "https://img.us.news.samsung.com/us/wp-content/uploads/2019/08/07102258/Galaxy-Book-S-Product-Images-1.jpg",
            ),
            SizedBox(
              height: 20,
            ),
            MyText(
                MyFontFamily: "Combo-Regular",
                MyTextSize: 40,
                MyTextt: "select the color :"),
            RadioListTile(
              title: Text(
                "black",
                style: TextStyle(fontSize: 20),
              ),
              value: "value",
              groupValue: MyGroupVal,
              onChanged: (value) {
                setState(() {
                  MyGroupVal = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text(
                "white",
                style: TextStyle(fontSize: 20),
              ),
              value: "valu",
              groupValue: MyGroupVal,
              onChanged: (value) {
                setState(() {
                  MyGroupVal = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text(
                "purpel",
                style: TextStyle(fontSize: 20),
              ),
              value: "val",
              groupValue: MyGroupVal,
              onChanged: (value) {
                setState(() {
                  MyGroupVal = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text(
                "gold",
                style: TextStyle(fontSize: 20),
              ),
              value: "va",
              groupValue: MyGroupVal,
              onChanged: (value) {
                setState(() {
                  MyGroupVal = value.toString();
                });
              },
            ),
            Divider(
              height: 20,
            ),
            MyText(
                MyFontFamily: "Combo-Regular",
                MyTextSize: 40,
                MyTextt: "CHOOSE SIZE OF RAM :"),
            CheckboxListTile(
              title: Text(
                "8 Gp",
                style: TextStyle(fontSize: 20),
              ),
              value: MyVal,
              onChanged: (value) {
                setState(() {
                  MyVal = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text(
                "16 Gp ",
                style: TextStyle(fontSize: 20),
              ),
              value: myval,
              onChanged: (value) {
                setState(() {
                  myval = value!;
                });
              },
            ),
            MyText(
                MyFontFamily: "Combo-Regular",
                MyTextSize: 40,
                MyTextt: "CHOOSE SIZE OF hard disk :"),
            CheckboxListTile(
              title: Text(
                "256 Gp",
                style: TextStyle(fontSize: 20),
              ),
              value: val,
              onChanged: (value) {
                setState(() {
                  val = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text(
                "512 Gp ",
                style: TextStyle(fontSize: 20),
              ),
              value: VAL,
              onChanged: (value) {
                setState(() {
                  VAL = value!;
                });
              },
            ),
            MyText(
                MyFontFamily: "Combo-Regular",
                MyTextSize: 40,
                MyTextt: "how many do want ?"),
            DropdownButton(
              value: SelectedItem,
              items: MyListItem.map(
                (e) => DropdownMenuItem(value: e, child: Text("$e")),
              ).toList(),
              onChanged: (value) {
                setState(() {
                  SelectedItem = value.toString();
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              minLines: 2,
              maxLines: 6,
              maxLength: 300,
              decoration: InputDecoration(
                hintText: "For Any Suggestions",
                hintStyle: TextStyle(
                    color: Colors.black87,
                    fontFamily: "Combo-Regular",
                    fontSize: 25),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 166, 230, 248))),
              onPressed: () {
                setState(() {
                  Navigator.pop(context, MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ));
                });
              },
              icon: Icon(
                Icons.arrow_back,
                color: Color.fromARGB(255, 0, 156, 161),
              ),
              label: Text(
                "GO TO HOME PAGE ",
                style: TextStyle(
                    fontFamily: "DancingScript-VariableFont_wght",
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 156, 161)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

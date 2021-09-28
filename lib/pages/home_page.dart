import 'package:chatskuy/theme.dart';
import 'package:chatskuy/widgets/chat_file.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: greenColor,
          splashColor: whiteColor,
          child: const Icon(
            Icons.add,
            size: 28,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profile1.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Luke Hobbs',
                  style: TextStyle(color: whiteColor, fontSize: 20),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Android developer',
                  style: TextStyle(color: lightBlueColor, fontSize: 16),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(40))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/profile2.png',
                        name: 'Jennifer Gabriella',
                        text: 'Have you done project?...',
                        time: '12:55',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/profile3.png',
                        name: 'Joshua Lamber',
                        text: 'Let\'s go to warkop, we w...',
                        time: '12:50',
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group1.png',
                        name: 'Adobe PS',
                        text: 'Why does everyone love...',
                        time: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: 'Adobe AU',
                        text: 'Do you know what is the...',
                        time: '08:15',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: 'Adobe AE',
                        text: 'What is export btw? i got...',
                        time: '08:12',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group3.png',
                        name: 'Adobe AE',
                        text: 'Can you help me with th...',
                        time: '08:10',
                        unread: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )));
  }
}

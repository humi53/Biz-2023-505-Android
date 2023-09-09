import 'package:flutter/material.dart';
import 'package:writer/page/allpic_page.dart';
import 'package:writer/page/home_page.dart';
import 'package:writer/page/hotpic_page.dart';
import 'package:writer/page/mypic_page.dart';
import 'package:writer/page/pushpic_page.dart';

Widget mainMenu(BuildContext context) => Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("images/profile.png"),
            ),
            accountName: Text("YoPheu"),
            accountEmail: Text("yo.pheu@gmail.com"),
          ),
          ListTile(
            title: const Text(
              "home",
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
            leading: const Icon(
              Icons.home,
              color: Colors.blue,
            ),
            onTap: () {
              debugPrint("Home 메뉴가 클림됨");
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
          const Divider(height: 0.2, color: Colors.blue),
          ListTile(
            title: const Text(
              "이번주의 작품",
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
            leading: const Icon(
              Icons.coffee_rounded,
              color: Colors.blue,
            ),
            onTap: () {
              debugPrint("이번주의 작품");

              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const HotpicPage(),
              ));
            },
          ),
          const Divider(height: 0.2, color: Colors.blue),
          ListTile(
            title: const Text(
              "모든작품들",
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
            leading: const Icon(
              Icons.photo,
              color: Colors.blue,
            ),
            onTap: () {
              debugPrint("모든 작품들을 보여주자");
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Allpic()));
            },
          ),
          const Divider(height: 0.2, color: Colors.blue),
          ListTile(
            title: const Text(
              "나의작품들",
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
            leading: const Icon(
              Icons.photo_camera_front_outlined,
              color: Colors.blue,
            ),
            onTap: () {
              debugPrint("나의작품들 클릭");
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => const Mypic()));
            },
          ),
          const Divider(height: 0.2, color: Colors.blue),
          ListTile(
            title: const Text(
              "작품올리기",
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
            leading: const Icon(
              Icons.photo_camera_outlined,
              color: Colors.blue,
            ),
            onTap: () {
              debugPrint("작품 올리는곳");
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Pushpic()));
            },
          ),
          const Divider(height: 0.2, color: Colors.blue),
        ],
      ),
    );
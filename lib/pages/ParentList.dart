import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import 'Watch.dart';

class ParentList extends StatelessWidget {
  ParentList({
    Key? key,
  }) : super(key: key);

  List playlist = [
    {
      "name": "Playlist 01",
      "pic":
          "https://i.picsum.photos/id/10/2500/1667.jpg?hmac=J04WWC_ebchx3WwzbM-Z4_KC_LeLBWr5LZMaAkWkF68"
    },
    {
      "name": "Playlist 02",
      "pic":
          "https://i.picsum.photos/id/100/2500/1656.jpg?hmac=gWyN-7ZB32rkAjMhKXQgdHOIBRHyTSgzuOK6U0vXb1w"
    },
    {
      "name": "Playlist 03",
      "pic":
          "https://i.picsum.photos/id/1001/5616/3744.jpg?hmac=38lkvX7tHXmlNbI0HzZbtkJ6_wpWyqvkX4Ty6vYElZE"
    },
    {
      "name": "Playlist 04",
      "pic":
          "https://i.picsum.photos/id/1002/4312/2868.jpg?hmac=5LlLE-NY9oMnmIQp7ms6IfdvSUQOzP_O3DPMWmyNxwo"
    },
    {
      "name": "Playlist 05",
      "pic":
          "https://i.picsum.photos/id/1003/1181/1772.jpg?hmac=oN9fHMXiqe9Zq2RM6XT-RVZkojgPnECWwyEF1RvvTZk"
    },
    {
      "name": "Playlist 06",
      "pic":
          "https://i.picsum.photos/id/1004/5616/3744.jpg?hmac=Or7EJnz-ky5bsKa9_frdDcDCR9VhCP8kMnbZV6-WOrY"
    },
    {
      "name": "Playlist 07",
      "pic":
          "https://i.picsum.photos/id/1005/5760/3840.jpg?hmac=2acSJCOwz9q_dKtDZdSB-OIK1HUcwBeXco_RMMTUgfY"
    },
    {
      "name": "Playlist 08",
      "pic":
          "https://i.picsum.photos/id/1006/3000/2000.jpg?hmac=x83pQQ7LW1UTo8HxBcIWuRIVeN_uCg0cG6keXvNvM8g"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // All page
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffff0000),
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 56,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.h_mobiledata, color: Colors.white),
                onPressed: () {},
                iconSize: 30,
              ),
              IconButton(
                icon: Icon(Icons.playlist_add, color: Colors.white),
                onPressed: () {},
                iconSize: 30,
              ),
              SizedBox(width: 20), // The dummy child
              IconButton(
                icon: Icon(Icons.precision_manufacturing_sharp,
                    color: Colors.white),
                onPressed: () {},
                iconSize: 30,
              ),
              IconButton(
                icon: Icon(Icons.person, color: Colors.white),
                onPressed: () {},
                iconSize: 30,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.white,
              child: Icon(Icons.home, color: Colors.red, size: 38),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // All page
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            pinned: false,
            elevation: 0,
            leading: IconButton(
              icon: Icon(LineIcons.angleLeft, color: Color(0xffff0000)),
              onPressed: () {
                Navigator.of(context).pop();
              },
              iconSize: 50,
            ),
            title: Text(
              'All playlist',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.settings, color: Color(0xffff0000)),
                onPressed: () {},
                iconSize: 30,
              ),
            ],
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Watch(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ClipRRect(
                              child: Image.network(
                                playlist[index]["pic"],
                              ),
                            ),
                          ),
                          alignment: Alignment.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            playlist[index]["name"],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              childCount: playlist.length,
            ),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1),
          ),
        ],
      ),
    );
  }
}

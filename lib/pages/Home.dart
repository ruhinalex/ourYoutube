import 'package:flutter/material.dart';
import 'package:youtube/pages/ParentList.dart';
import 'package:youtube/pages/Watch.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: false,
            backgroundColor: Colors.white,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 20.0,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 13.0, bottom: 13.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(14.0),
                          right: Radius.circular(14.0))),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(""),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(200.0),
              child: Container(
                height: 200.0,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "TITLE",
                          style: TextStyle(
                              fontSize: 30.0, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "SUBTITLE",
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("CALL TO ACTION"),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18.0))),
                              fixedSize:
                                  MaterialStateProperty.all(Size(145.0, 35.0))),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 60.0,
                      backgroundColor: Colors.red,
                    )
                  ],
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                child: SizedBox(
                  height: 30.0,
                ),
              ),
            ),
          ),

          // lakfdlskalsdf
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "PREMIUM",
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ParentList(),
                                ),
                              );
                            },
                            child: Text(
                              "See More",
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrange),
                            )),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.white,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int i) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 100,
                        width: 160,
                        color: Colors.transparent,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Watch(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Image.network(
                                "https://st.depositphotos.com/1006899/4843/i/950/depositphotos_48434135-stock-photo-free-text.jpg",
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, right: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: ClipRRect(
                                          // the radius must be at least half of the width of the child Container
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          child: Container(
                                              height: 40,
                                              width: 40,
                                              color: Colors.black)),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Video Title",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          "Sub Title",
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "PINNED",
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ParentList(),
                              ),
                            );
                          },
                          child: Text("See More")),
                    ],
                  ),
                ),
                //
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.white,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int i) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 100,
                        width: 160,
                        color: Colors.transparent,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Watch(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Image.network(
                                "https://st.depositphotos.com/1006899/4843/i/950/depositphotos_48434135-stock-photo-free-text.jpg",
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, right: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: ClipRRect(
                                          // the radius must be at least half of the width of the child Container
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          child: Container(
                                              height: 40,
                                              width: 40,
                                              color: Colors.black)),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Video Title",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          "Sub Title",
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "NORMAL",
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ParentList(),
                              ),
                            );
                          },
                          child: Text("See More")),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.white,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int i) => Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 100,
                        width: 160,
                        color: Colors.transparent,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Watch(),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Image.network(
                                "https://st.depositphotos.com/1006899/4843/i/950/depositphotos_48434135-stock-photo-free-text.jpg",
                                fit: BoxFit.fill,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, right: 5, bottom: 5),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 5),
                                      child: ClipRRect(
                                          // the radius must be at least half of the width of the child Container
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          child: Container(
                                              height: 40,
                                              width: 40,
                                              color: Colors.black)),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Video Title",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          "Sub Title",
                                          style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

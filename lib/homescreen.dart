import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'widgets/containerbody.dart';
import 'widgets/searchbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  Color colorPrimary = HexColor("#041b38");
  Image appLogo = new Image(
      image: new ExactAssetImage("assets/images/dunzo.png"),
      height: 40.0,
      width: 40,
      alignment: FractionalOffset.center);

  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Rewards'),
    Tab(text: 'Promotion'),
    Tab(text: 'History'),
  ];

  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  double yourPercentage = 0.825;
  Color colorSecondary = HexColor("#2ba859");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,
      appBar: AppBar(
        backgroundColor: colorPrimary,
        title: appLogo,
        toolbarHeight: 50,
        centerTitle: true,
        leading: Icon(
          Icons.menu,
          size: 30,
        ),
        actions: [
          Icon(
            Icons.qr_code_sharp,
            size: 30,
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.notifications,
            size: 30,
          ),
          SizedBox(
            width: 7,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SearchBar(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                height: 160,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CircularPercentIndicator(
                        lineWidth: 8,
                        progressColor: Colors.greenAccent,
                        radius: 120.0,
                        startAngle: 245,
                        percent: 0.775 * yourPercentage,
                        animation: true,
                        backgroundColor: Colors.transparent,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "100",
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "Balance points",
                              style: TextStyle(
                                color: Colors.black.withAlpha(120),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.store),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Shop Name'),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Icon(Icons.phone_android),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Phone Number'),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            Icon(Icons.email),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Email Address'),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Last Visited: 04-12-2021"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 8, right: 8),
            width: MediaQuery.of(context).size.width,
            child: TabBar(
              controller: _controller,
              indicatorWeight: 5,
              indicatorColor: Colors.greenAccent,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.white,
              labelPadding: EdgeInsets.all(2),
              tabs: myTabs,
            ),
          ),
          ContainerBody(
            redempoints: '40',
          ),
          ContainerBody(
            redempoints: '150',
          ),
        ]),
      ),
    );
  }
}

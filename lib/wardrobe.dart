import 'dart:math';

import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:wardrobetest/addFavs.dart';
import 'package:wardrobetest/constants.dart';
import 'package:wardrobetest/models/top.dart';
import 'package:wardrobetest/services.dart';
import 'package:wardrobetest/widgets/templatecard.dart';

class WardrobeHomepage extends StatefulWidget {
  @override
  _WardrobeHomepageState createState() => _WardrobeHomepageState();
}

class _WardrobeHomepageState extends State<WardrobeHomepage> {
  final ItemScrollController topScrollController = ItemScrollController();
  final ItemScrollController bottomScrollController = ItemScrollController();

  /// Listener that reports the position of items when the list is scrolled.
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ItemPositionsListener bottomPositionsListener =
      ItemPositionsListener.create();

  FilePersistence _filePersistence = FilePersistence();

  void scrollTo(int topindex, int bottomindex) {
    topScrollController.scrollTo(
      index: topindex,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOutCubic,
    );
    bottomScrollController.scrollTo(
      index: bottomindex,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Wardrobe'),
        actions: [
          // IconButton(
          //   icon: Icon(Icons.settings),
          //   onPressed: () {

          //   },
          // ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            // width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: list('top'),
                ),
                SizedBox(
                  height: sHeight(20.0),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      // height: sWidth(100.0),
                      // minWidth: sWidth(100.0),
                      color: Colors.green,
                      onPressed: () {
                        Random random = new Random();
                        Random rand = new Random();
                        int topnumber = random.nextInt(topWears.length);
                        int bottomnumber = rand.nextInt(bottomWears.length);
                        scrollTo(topnumber, bottomnumber);
                      },
                      child: Text('Show Random'),
                    ),
                    // MaterialButton(
                    //   color: Colors.orange,
                    //   onPressed: () {
                    //     // var obj = {};
                    //     // var topposition =
                    //     //     itemPositionsListener.itemPositions.value;
                    //     // var bottomPosition =
                    //     //     bottomPositionsListener.itemPositions.value;

                    //     // print(topposition);
                    //     // if (topposition.first.itemLeadingEdge == 0.0 &&
                    //     //     bottomPosition.first.itemLeadingEdge == 0.0) {
                    //     //   var topwear = topWears[topposition.first.index];
                    //     //   var bottomwear =
                    //     //       bottomWears[bottomPosition.first.index];
                    //     //   obj.addAll(topwear);
                    //     //   obj.addAll(bottomwear);
                    //     //   print(obj);
                    //     // }
                    //     // _filePersistence.saveObject(
                    //     //   'devs',
                    //     //   'favslist',
                    //     // );
                    //   },
                    //   child: Text('add Favs'),
                    // ),
                    MaterialButton(
                      color: Colors.pink,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return AddFavourites();
                            },
                          ),
                        );
                      },
                      child: Text('Add WardRobes'),
                    ),
                  ],
                ),
                SizedBox(
                  height: sHeight(20.0),
                ),
                Expanded(
                  child: list('bottom'),
                ),
                // Expanded(
                //   child: list(),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget list(String type) {
    return ScrollablePositionedList.builder(
      itemCount: type == 'top' ? topWears.length : bottomWears.length,
      itemBuilder: (context, index) => item(index, type),
      itemScrollController:
          type == 'top' ? topScrollController : bottomScrollController,
      itemPositionsListener:
          type == 'top' ? itemPositionsListener : bottomPositionsListener,
      scrollDirection: Axis.horizontal,
    );
  }

  Widget item(int i, String type) {
    List array = [];
    array = type == 'top'
        ? topWears.map((e) => TopWears.fromJson(e)).toList()
        : bottomWears.map((e) => BottomWears.fromJson(e)).toList();
    return Container(
        padding: EdgeInsets.only(left: sWidth(20.0)),
        child: Row(
          children: [
            BestTemplatesCard(
              imageUrl: array[i].name,
              title: array[i].name,
              path: array[i].path,
            ),
            SizedBox(width: sWidth(36.0)),
          ],
        ));
  }
}

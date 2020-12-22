import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wardrobetest/constants.dart';
import 'package:wardrobetest/models/top.dart';
import 'package:wardrobetest/wardrobe.dart';
import 'package:wardrobetest/widgets/templatecard.dart';

class AddFavourites extends StatefulWidget {
  @override
  _AddFavouritesState createState() => _AddFavouritesState();
}

class _AddFavouritesState extends State<AddFavourites> {
  @override
  void initState() {
    super.initState();
  }

  final picker = ImagePicker();
  File _topimage;
  File _bottomImage;

  Future getImage(String type) async {
    final PickedFile pickedFile = await picker.getImage(
      source: ImageSource.camera,
    );
    // setState(() {
    if (pickedFile != null) {
      if (type == 'top') {
        _topimage = File(pickedFile.path);
      } else {
        _bottomImage = File(pickedFile.path);
      }
      setState(() {});
    } else {
      print('No image selected.');
    }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Favourites'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: sHeight(20.0),
              ),
              Text('Add TopWear'),
              Container(
                height: sWidth(300.0),
                width: sWidth(300.0),
                child: Center(
                  child: _topimage == null
                      ? IconButton(
                          icon: Icon(Icons.add_a_photo),
                          onPressed: () {
                            getImage('top');
                          },
                        )
                      : Image.file(_topimage),
                ),
              ),
              SizedBox(
                height: sHeight(30.0),
              ),
              Container(
                height: sWidth(300.0),
                width: sWidth(300.0),
                child: Center(
                  child: _bottomImage == null
                      ? IconButton(
                          icon: Icon(Icons.add_a_photo),
                          onPressed: () {
                            getImage('bottom');
                          },
                        )
                      : Image.file(_bottomImage),
                ),
              ),
              Text('Add BootomWear'),
              SizedBox(
                height: sHeight(20.0),
              ),
              MaterialButton(
                onPressed: () {
                  if (_topimage != null && _bottomImage != null) {
                    Random random = new Random();
                    Random btand = new Random();
                    int rand = random.nextInt(100);
                    int bt = btand.nextInt(100);
                    topWears.add(
                      {
                        'id': rand,
                        'isFavourite': true,
                        'isGalleryimage': true,
                        'path': _topimage.path
                      },
                    );
                    bottomWears.add({
                      'id': bt,
                      'isFavourite': true,
                      'isGalleryimage': true,
                      'path': _bottomImage.path
                    });
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return WardrobeHomepage();
                        },
                      ),
                    );
                  }
                },
                child: Text('Done'),
                color: Colors.greenAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

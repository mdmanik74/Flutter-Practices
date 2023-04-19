import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_pickers/image_pickers.dart';
void main() =>runApp(MyApp());
class MyApp extends StatelessWidget
File _cameraImage;
// This funcion will helps you to pick and Image from Camera
_pickImageFromCamera() async {
  File image = await  ImagePickers.pickerPaths(
    galleryMode: GalleryMode.video,
    selectCount: 5,
  );

  setState(() {
    _cameraImage = image;
  });
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(title: Text('Image Picker',),),
        body: Column(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.red.shade100,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(onPressed: () {}, child: Icon(Icons.camera),),
                SizedBox(width: 20,),
                FloatingActionButton(onPressed: (){}, child: Icon(Icons.photo_library),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
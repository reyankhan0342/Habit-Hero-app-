// ignore_for_file: prefer_const_constructors

import 'dart:io';


import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class CustomImagePicker with ChangeNotifier {


  String? profileImage;


  File? _Image;

  File? get Image => _Image;
  final picker = ImagePicker();

  Future _pickImageGallery(BuildContext context) async {
    final pickedImage = await picker.pickImage(
        source: ImageSource.gallery, imageQuality: 100);

    if (pickedImage != null) {
      _Image = File(pickedImage.path);
      notifyListeners();
    }
  }


  void pickImageCamera(BuildContext context) async
  {
    final pickedImage = await picker.pickImage(
        source: ImageSource.camera, imageQuality: 100);

    if (pickedImage != null) {
      _Image = File(pickedImage.path);
    }
  }




  void pickImage(context) {
    showDialog(
        context: context, builder: (context) {
      return AlertDialog(
        elevation: 5,
        backgroundColor: Colors.white,
        content: Container(
          height: 120,
          child: Column(
            children: [

              GestureDetector(
                onTap: () {
                  pickImageCamera(context);
                  Navigator.pop(context);
                },
                child: ListTile(
                  leading: Icon(Icons.camera_alt, size: 15,),
                  title: Text(
                    'camera',
                    style: TextStyle(fontSize: 17, color: Colors.black,
                        fontWeight: FontWeight.w400, fontFamily: 'medium'),),
                ),
              ),

              GestureDetector(
                onTap: () {
                  _pickImageGallery(context);
                  Navigator.pop(context);
                },
                child: ListTile(
                  leading: Icon(Icons.image, size: 17,),
                  title: Text('Gallery',
                    style: TextStyle(fontSize: 18, color: Colors.black,
                        fontWeight: FontWeight.w400, fontFamily: 'medium'),),
                ),
              ),
            ],
          ),

        ),
      );
    });
  }


}






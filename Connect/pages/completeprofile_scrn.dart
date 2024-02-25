import 'dart:io';
import 'package:connect/pages/home_scrn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class Complete_profile_scrn extends StatefulWidget {
  const Complete_profile_scrn({Key? key}) : super(key: key);

  @override
  State<Complete_profile_scrn> createState() => _Complete_profile_scrnState();
}

class _Complete_profile_scrnState extends State<Complete_profile_scrn> {
  File? imageFile;
  TextEditingController fullNameController = TextEditingController();

  void selectImage(ImageSource source) async {
    XFile? pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      cropImage(pickedFile);
    }
  }

  void cropImage(XFile file) async {
    File? croppedImage = await ImageCropper().cropImage(
        sourcePath: file.path,
        aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1));

    if (croppedImage != null) {
      setState(() {
        imageFile = croppedImage;
      });
    }
  }

  void showPhotoOptions() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Upload Profile Picture",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Alata',
                  color: Colors.black87),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    selectImage(ImageSource.gallery);
                  },
                  title: Text("Select from Gallery"),
                  leading: Icon(Icons.photo_album),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    selectImage(ImageSource.camera);
                  },
                  title: Text("Take a photo"),
                  leading: Icon(Icons.camera_alt),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.white,
              Colors.blue.shade50,
              Colors.greenAccent
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              "Complete Profile",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.blue,
                  fontFamily: "Alata"),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: ListView(
                children: [
                  SizedBox(height: 60),
                  CupertinoButton(
                    onPressed: () {
                      showPhotoOptions();
                    },
                    child: CircleAvatar(
                      child: (imageFile == null)
                          ? Icon(
                              Icons.add_a_photo,
                              size: 35,
                            )
                          : null,
                      radius: 80,
                      backgroundImage:
                          (imageFile != null) ? FileImage(imageFile!) : null,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CupertinoButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Home_scrn()));
                    },
                    child: Text("Submit"),
                    color: Theme.of(context).colorScheme.secondary,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

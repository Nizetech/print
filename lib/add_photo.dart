import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:print/select_photo.dart';

class AddPhotoScreen extends StatefulWidget {
  AddPhotoScreen({Key? key}) : super(key: key);

  @override
  State<AddPhotoScreen> createState() => _AddPhotoScreenState();
}

class _AddPhotoScreenState extends State<AddPhotoScreen> {
  // late XFile imageFile;
  List<File> pickedImages = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back_sharp,
              color: Color(0xffEA465B),
            )),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "profile info",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        actions: [
          GestureDetector(
            onTap: () => Get.to(SelectPhotos()),
            child: Container(
              margin: EdgeInsets.only(
                right: 20,
                top: 13,
              ),
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(-0.362, 1.35),
                  end: Alignment(0.362, -1.35),
                  colors: [
                    Color(0xffbb1271),
                    Color(0xffd2146d),
                    Color(0xffff7a51),
                    Color(0xfffebb53)
                  ],
                ),
                borderRadius: BorderRadius.circular(22),
              ),
              child: const Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 25),
              child: Column(
                children: [
                  const Text(
                    'Add Photos',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () async {
                          XFile? image = await ImagePicker().pickImage(
                            source: ImageSource.gallery,
                            maxWidth: 200,
                            maxHeight: 200,
                            imageQuality: 50,
                          );
                          if (image != null) {
                            setState(() {
                              pickedImages.add(File(image.path));
                              print(pickedImages);
                            });
                          } else {
                            return;
                          }
                          // Get.back();
                        },
                        child: Container(
                          height: 166,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white.withOpacity(.2),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.add_photo_alternate_outlined,
                              color: Color(0xffEA465B),
                              size: 35,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      pickedImages.isNotEmpty
                          ? Expanded(
                              child: SizedBox(
                                height: 166,
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: pickedImages.length,
                                  separatorBuilder: (ctx, i) => const SizedBox(width: 9),
                                  itemBuilder: (ctx, i) {
                                    return Container(
                                      height: 166,
                                      width: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.file(
                                          pickedImages[i],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Container(
              // height: ,
              padding: EdgeInsets.only(left: 20, top: 25, right: 20, bottom: 10),
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(-0.362, 1.35),
                  end: Alignment(0.362, -1.35),
                  colors: [
                    Color(0xffbb1271),
                    Color(0xffd2146d),
                    Color(0xffff7a51),
                    Color(0xfffebb53)
                  ],
                ),
                borderRadius: BorderRadius.only(topRight: Radius.circular(55)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivery Info',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Full Name',
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                          height: 52,
                          width: 100,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Mr.',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(Icons.keyboard_arrow_down_rounded,
                                  color: Colors.white),
                            ],
                          )),
                    ],
                  ),
                  SizedBox(height: 10),
                  TextField(
                    maxLines: 3,
                    decoration: InputDecoration(
                      hintText: 'Street Address',
                      hintStyle: TextStyle(
                          color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Phone No.',
                      hintStyle: TextStyle(
                          color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                            height: 52,
                            width: 100,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'City',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(Icons.keyboard_arrow_down_rounded,
                                    color: Colors.white),
                              ],
                            )),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Container(
                            height: 52,
                            width: 100,
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  'Province',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Icon(Icons.keyboard_arrow_down_rounded,
                                    color: Colors.white),
                              ],
                            )),
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  Center(
                    child: Container(
                      height: 5,
                      width: 135,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

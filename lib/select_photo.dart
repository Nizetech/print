import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:print/album.dart';
import 'package:print/component.dart';

Widget check(context) {
  return Container(
    child: Icon(
      Icons.check_circle,
      color: Colors.white,
    ),
  );
}

class SelectPhotos extends StatefulWidget {
  SelectPhotos({Key? key}) : super(key: key);

  @override
  State<SelectPhotos> createState() => _SelectPhotosState();
}

class _SelectPhotosState extends State<SelectPhotos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(
                Icons.arrow_back_sharp,
                color: Color(0xffEA465B),
              )),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Finalize",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          actions: [
            GestureDetector(
              onTap: () => Get.to(AlbumScreen()),
              child: Container(
                margin: const EdgeInsets.only(
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
          child: Padding(
            padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Select Photos',
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
                    Photo1(
                      text: 'Picture\nOne',
                    ),
                    SizedBox(width: 10),
                    Photo2(
                      text: 'Picture 2',
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Photo2(
                      text: 'Picture 3',
                    ),
                    SizedBox(width: 10),
                    Photo2(
                      text: 'Picture 4',
                    ),
                    SizedBox(width: 10),
                    Photo2(
                      text: 'Picture 5',
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Photo2(
                      text: 'Picture 6',
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Photo1(
                        text: 'Picture 7',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Photo2(
                      text: 'Picture 8',
                    ),
                    SizedBox(width: 10),
                    Photo2(
                      text: 'Picture 9',
                    ),
                    SizedBox(width: 10),
                    Photo2(
                      text: 'Picture 10',
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: Container(
                    height: 5,
                    width: 135,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(height: 7),
              ],
            ),
          ),
        ));
  }
}

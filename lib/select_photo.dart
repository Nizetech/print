import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:print/album.dart';

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
              icon: Icon(
                Icons.arrow_back_sharp,
                color: Color(0xffEA465B),
              )),
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Finalize",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          actions: [
            Container(
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
                    GestureDetector(
                      onTap: () => Get.to(AlbumScreen()),
                      child: Container(
                        height: 160,
                        padding: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width * 0.56,
                        decoration: const BoxDecoration(
                          color: Color(0xffEA465B),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(2),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(2),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Picture\nOne',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xffffffff),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 160,
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: const BoxDecoration(
                        color: Color(0xffEA465B),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(2),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Picture 2',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      height: 160,
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width * 0.275,
                      decoration: const BoxDecoration(
                        color: Color(0xffEA465B),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(2),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Picture 3',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 160,
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width * 0.275,
                      decoration: const BoxDecoration(
                        color: Color(0xffEA465B),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(2),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Picture 4',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 160,
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width * 0.275,
                      decoration: const BoxDecoration(
                        color: Color(0xffEA465B),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(2),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Picture 5',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      height: 160,
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width * 0.3,
                      decoration: const BoxDecoration(
                        color: Color(0xffEA465B),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(2),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Picture 6',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 160,
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width * 0.56,
                      decoration: const BoxDecoration(
                        color: Color(0xffEA465B),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(2),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Picture 7',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      height: 160,
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width * 0.275,
                      decoration: const BoxDecoration(
                        color: Color(0xffEA465B),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(2),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Picture 8',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 160,
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width * 0.275,
                      decoration: const BoxDecoration(
                        color: Color(0xffEA465B),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(2),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Picture 9',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      height: 160,
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width * 0.275,
                      decoration: const BoxDecoration(
                        color: Color(0xffEA465B),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(2),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(2),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: const Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          'Picture 10',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
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

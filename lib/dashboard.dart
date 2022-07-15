import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'add_photo.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: SizedBox(),
        elevation: 0,
        title: Text(
          "Let's get printing...",
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
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/bg.png'), fit: BoxFit.cover)),
        child: Column(
          children: [
            Expanded(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () => Get.to(AddPhotoScreen()),
                        child: Container(
                          height: 110,
                          width: 110,
                          padding: EdgeInsets.all(35),
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
                              borderRadius: BorderRadius.circular(55)),
                          child: Image.asset(
                            'assets/print.png',
                            height: 33,
                            width: 40,
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: -2,
                          right: -1,
                          child: Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 5, color: Colors.black),
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
                                borderRadius: BorderRadius.circular(22)),
                            child: const Icon(
                              Icons.check,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                  SizedBox(height: 16),
                  const Text(
                    'Print Photos',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            )),
            Expanded(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Container(
                    height: 110,
                    width: 110,
                    padding: EdgeInsets.all(35),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(55)),
                    child: Image.asset(
                      'assets/pause.png',
                      height: 33,
                      width: 40,
                    ),
                  ),
                  SizedBox(height: 16),
                  const Text(
                    'History',
                    style: TextStyle(
                      fontSize: 30,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Container(
                    height: 5,
                    width: 135,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(height: 7),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

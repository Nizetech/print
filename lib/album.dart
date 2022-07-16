import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlbumScreen extends StatefulWidget {
  AlbumScreen({Key? key}) : super(key: key);

  @override
  State<AlbumScreen> createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Group 1.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 40),
            Container(
                margin: EdgeInsets.only(left: 20, top: 15, bottom: 5),
                height: 42,
                width: 42,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(
                      Icons.arrow_back_sharp,
                      color: Color(0xffEA465B),
                    ))),
            Spacer(),
            Center(
              child: Container(
                height: 20,
                width: 70,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: Colors.black, borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: Color(0xFFE4DDDD),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: Color(0xFFE4DDDD),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: Color(0xFFE4DDDD),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 36,
                            color: Color(0xffffffff),
                            letterSpacing: 0.9,
                            height: 1.8000000317891438,
                          ),
                          children: [
                            TextSpan(
                              text: 'Album, ',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: '24',
                            ),
                            TextSpan(
                              text: 'Slots',
                              style: TextStyle(
                                fontSize: 24,
                                letterSpacing: 0.6000000000000001,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                          margin: EdgeInsets.only(top: 15, bottom: 5),
                          height: 42,
                          width: 42,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(.5),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: IconButton(
                              onPressed: () => Get.back(),
                              icon: const Icon(
                                Icons.arrow_forward,
                                color: Color(0xffEA465B),
                              ))),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Lahore, PU    ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                        child: Divider(
                          thickness: 2,
                          color: Colors.white.withOpacity(.5),
                        ),
                      ),
                      const Text(
                        '   339 Orders    ',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 17),
                  Divider(
                    thickness: 2,
                    color: Colors.white.withOpacity(.5),
                  ),
                  SizedBox(height: 16),
                  const Text(
                    'Nullam tellus libero, tincidunt ut ipsum in, aliquet dictum dolor. Sed interdum lacinia urna non euismod.  ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 45),
            SizedBox(
              height: 160,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                separatorBuilder: (ctx, i) => SizedBox(width: 10),
                itemBuilder: (ctx, i) {
                  return Container(
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
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              // padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.08),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(2),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(2)),
              ),
              child: TabBar(
                  labelStyle: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                  indicator: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(2),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(2)),
                    color: Colors.grey.withOpacity(.25),
                    shape: BoxShape.rectangle,
                  ),
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Tab(
                      icon: Image.asset('assets/menu.png', height: 17, width: 20),
                      text: 'Albums',
                    ),
                    Tab(
                      icon: Image.asset('assets/frame.png', height: 20, width: 26),
                      text: 'Frame',
                    ),
                    Tab(
                      icon: Image.asset('assets/photo.png', height: 17, width: 30),
                      text: 'Only Photos',
                    ),
                  ]),
            ),
            SizedBox(height: 15),
            Center(
              child: Container(
                height: 5,
                width: 135,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(height: 10),

            // Spacer(),
          ]),
        ),
      ),
    );
  }
}

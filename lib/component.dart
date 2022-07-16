import 'package:flutter/material.dart';
import 'package:print/select_photo.dart';

class Photo1 extends StatefulWidget {
  final String text;
  Photo1({Key? key, required this.text}) : super(key: key);

  @override
  State<Photo1> createState() => _Photo1State();
}

class _Photo1State extends State<Photo1> {
  bool _isChecked = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
        });
      },
      child: Container(
        height: 160,
        width: MediaQuery.of(context).size.width * 0.56,
        padding: EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Color(0xffEA465B),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(2),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(2),
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _isChecked ? SizedBox() : check(context),
            Spacer(),
            Text(
              widget.text,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xffffffff),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Photo2 extends StatefulWidget {
  final String text;
  Photo2({Key? key, required this.text}) : super(key: key);

  @override
  State<Photo2> createState() => _Photo2State();
}

class _Photo2State extends State<Photo2> {
  bool _isCheck = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isCheck = !_isCheck;
        });
      },
      child: Container(
        height: 160,
        width: MediaQuery.of(context).size.width * 0.275,
        padding: EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Color(0xffEA465B),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(2),
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(2),
            bottomLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _isCheck ? SizedBox() : check(context),
            Spacer(),
            Text(
              widget.text,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xffffffff),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

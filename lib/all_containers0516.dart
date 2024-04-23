import 'package:flutter/material.dart';

class AllContainers extends StatelessWidget {
  const AllContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(60.0),
      children: [
        _basic(),
        _borders(),
        _Customborders(),
        _borderRadius(),
        _customborderRadius(),
        _gradients(),
        _boxShadow(),
        _backgroundImage()
      ],
    );
  }

  _basic() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Color(0xfffc5a9e),
        height: 150.0,
      ),
    );
  }

  _borders() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: Color(0xffe4aff4),
            border: Border.all(color: Color(0xffd500e4), width: 4.0)),
      ),
    );
  }

  _Customborders() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 150.0,
          decoration: const BoxDecoration(
              color: Color(0xffc9f9e7),
              border: Border(
                  top: BorderSide(color: Color(0xff06d321), width: 4.0),
                  bottom: BorderSide(
                    color: Color(0xffffaa38),
                    width: 5.0,
                  )))),
    );
  }

  _borderRadius() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: const BoxDecoration(
            color: Color(0xffb1d3ff),
            borderRadius: BorderRadius.all(Radius.circular(32.0))),
      ),
    );
  }

  _customborderRadius() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 150.0,
          decoration: const BoxDecoration(
              color: Color(0xfffcfe6c),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(32),
                  bottomRight: Radius.circular(32)))),
    );
  }

  _gradients() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xfffc5a9e),
          Color(0xffdefb90),
          Color(0xff97daf4),
        ])),
      ),
    );
  }

  _boxShadow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: Color(0xffc89ff8),
            borderRadius: const BorderRadius.all(Radius.circular(32)),
            boxShadow: [
              BoxShadow(
                color: Color(0xff000000)!.withOpacity(0.29),
                offset: const Offset(-10, 10),
                blurRadius: 10,
                spreadRadius: 10,
              )
            ]),
      ),
    );
  }

  _backgroundImage() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150.0,
        decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: const BorderRadius.all(Radius.circular(32)),
            boxShadow: [
              BoxShadow(
                color: Color(0xe7ff9edf)!.withOpacity(0.29),
                offset: const Offset(-10, 10),
                blurRadius: 10,
                spreadRadius: 10,
              )
            ],
            image: const DecorationImage(
                image: AssetImage("assets/impandora.jpg"), fit: BoxFit.cover)),
        child: const Center(
          child: Text(
            "PANDORA 0516",
            style: TextStyle(
              fontSize: 35.0,
              color: Color(0xff000000),
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'constant.dart';

class Disaster extends StatefulWidget {
  Disaster({required this.photo, required this.txt, required this.txtroute});

  final ImageProvider? photo;
  final String? txt;
  final GestureTapCallback? txtroute;

  @override
  State<Disaster> createState() => _DisasterState();
}

class _DisasterState extends State<Disaster> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: Card(
            child: InkWell(
              onTap: widget.txtroute,
              child: Container(
                width: MediaQuery.of(context).size.width * 1.0,
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: widget.photo!,
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: Text(
                    widget.txt!,
                    style: kTextStyle,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ImageImport extends StatelessWidget {
  final double vp, hp, re, ht, wd;
  final ImageProvider? photo;

  const ImageImport(
      {required this.vp,
      required this.hp,
      required this.re,
      required this.ht,
      required this.wd,
      required this.photo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vp, horizontal: hp),
      child: Card(
          color: Colors.black,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(re),
            child: Image(
              image: photo!,
              fit: BoxFit.cover,
              height: ht,
              width: wd,
            ),
          )),
    );
  }
}

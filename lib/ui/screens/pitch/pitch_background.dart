import 'package:draft_futbol/ui/screens/pitch/line_painter.dart';
import 'package:flutter/material.dart';

class PitchBackground extends StatelessWidget {
  final double pitchHeight;
  const PitchBackground({Key? key, required this.pitchHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double subsBench = pitchHeight - ((pitchHeight / 10) * 7);
    return SizedBox(
      height: pitchHeight,
      child: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: pitchHeight / 10,
          color: Color(0xFF05AE56),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: pitchHeight / 10,
          color: Color(0xFF00BA5C),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: pitchHeight / 10,
          color: Color(0xFF05AE56),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: pitchHeight / 10,
          color: Color(0xFF00BA5C),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: pitchHeight / 10,
          color: Color(0xFF05AE56),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: pitchHeight / 10,
          color: Color(0xFF00BA5C),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: pitchHeight / 10,
          color: Color(0xFF05AE56),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: subsBench,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFF05AE56),
              Theme.of(context).canvasColor,
            ],
          )),
          // color: Theme.of(context).buttonTheme.colorScheme!.secondary,
        ),
      ]),
    );
  }
}

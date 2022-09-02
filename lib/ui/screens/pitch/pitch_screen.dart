import 'package:draft_futbol/models/fixture.dart';
import 'package:draft_futbol/ui/screens/pitch/line_painter.dart';
import 'package:draft_futbol/ui/screens/pitch/pitch_background.dart';
import 'package:draft_futbol/ui/screens/pitch/pitch_header.dart';
import 'package:draft_futbol/ui/screens/pitch/squad.dart';
import 'package:draft_futbol/ui/widgets/app_bar/draft_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../models/DraftTeam.dart';

class Pitch extends StatefulWidget {
  Fixture fixture;
  DraftTeam homeTeam;
  DraftTeam awayTeam;
  Pitch(
      {Key? key,
      required this.homeTeam,
      required this.awayTeam,
      required this.fixture})
      : super(key: key);

  @override
  State<Pitch> createState() => _PitchState();
}

class _PitchState extends State<Pitch> {
  @override
  Widget build(BuildContext context) {
    double pitchHeight =
        (MediaQuery.of(context).size.height - AppBar().preferredSize.height);
    double subsLength = (pitchHeight - (pitchHeight / 10) * 7);
    double lineLength = pitchHeight - subsLength;
    return Scaffold(
      appBar: DraftAppBar(),
      body: DefaultTabController(
        animationDuration: Duration.zero,
        length: 2,
        child: Scaffold(
          appBar: PitchHeader(
            homeTeam: widget.homeTeam,
            awayTeam: widget.awayTeam,
            fixture: widget.fixture,
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Stack(
                  children: [
                    PitchBackground(
                      pitchHeight: pitchHeight,
                    ),
                    SizedBox(
                        height: pitchHeight,
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.black,
                        child: CustomPaint(
                          painter: LinePainter(pitchLength: lineLength),
                        )),
                    Squad(team: widget.homeTeam)
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Stack(
                  children: [
                    PitchBackground(
                      pitchHeight: pitchHeight,
                    ),
                    SizedBox(
                        height: pitchHeight,
                        width: MediaQuery.of(context).size.width,
                        // color: Colors.black,
                        child: CustomPaint(
                          painter: LinePainter(pitchLength: lineLength),
                        )),
                    Squad(team: widget.awayTeam)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
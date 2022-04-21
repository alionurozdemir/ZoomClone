import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zoom_clone_tutorial/resources/jitsi_meet_methods.dart';
import 'package:zoom_clone_tutorial/widgets/home_meeting_button.dart';

class MeetingScreen extends StatelessWidget {
  MeetingScreen({Key? key}) : super(key: key);

  //initialize
  final JitsiMeetMethods _jitsiMeetMethods = JitsiMeetMethods();
  createNewMeeting() async {
    var random = Random();
    String roomName = (random.nextInt(10000000) + 10000000).toString();
    _jitsiMeetMethods.createMeeting(roomName: roomName, isAudioMuted: true, isVideoMuted: true);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButton(
              onPressed: createNewMeeting,
              text: "New Meeting",
              icon: Icons.videocam,
            ),
            HomeMeetingButton(
              onPressed: () {},
              text: "Join Meeting",
              icon: Icons.add_box_rounded,
            ),
            HomeMeetingButton(
              onPressed: () {},
              text: "Schedule Meeting",
              icon: Icons.calendar_today,
            ),
            HomeMeetingButton(
              onPressed: () {},
              text: "Share Screen",
              icon: Icons.arrow_upward_outlined,
            ),
          ],
        ),
        const Expanded(
          child: Center(
            child: Text(
              "Create/join Meeting with just a click!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}

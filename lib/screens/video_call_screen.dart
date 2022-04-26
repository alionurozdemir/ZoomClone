import 'package:flutter/material.dart';
import 'package:zoom_clone_tutorial/resources/auth_methods.dart';
import 'package:zoom_clone_tutorial/utils/colors.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({Key? key}) : super(key: key);

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  final AuthMethods _authMethods = AuthMethods();
  late TextEditingController meetingIdcController;
  late TextEditingController nameController;

  @override
  void initState() {
    // TODO: implement initState
    meetingIdcController = TextEditingController();
    nameController = TextEditingController(text: _authMethods.user.displayName);
    super.initState();
  }

  _joinMeeting() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        title: const Text(
          "Join Meeting",
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 60,
            child: TextField(
              controller: meetingIdcController,
              maxLines: 1,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                fillColor: secondaryBackgroundColor,
                filled: true,
                border: InputBorder.none,
                hintText: "Room ID",
                contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 0),
              ),
            ),
          ),
          SizedBox(
            height: 60,
            child: TextField(
              controller: nameController,
              maxLines: 1,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                fillColor: secondaryBackgroundColor,
                filled: true,
                border: InputBorder.none,
                hintText: "Name",
                contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 0),
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: _joinMeeting,
            child: const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Join ",
                style: TextStyle(fontSize: 16),
              ),
            ),
          )
        ],
      ),
    );
  }
}

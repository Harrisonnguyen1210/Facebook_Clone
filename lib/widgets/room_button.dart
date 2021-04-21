import 'package:facebook_clone/config/palette.dart';
import 'package:flutter/material.dart';

class RoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => {},
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          side: BorderSide(
            width: 3.0,
            color: Colors.blueAccent[100],
          ),
          textStyle: TextStyle(color: Palette.facebookBlue)),
      child: Row(
        children: [
          // Not supoorted in web
          // ShaderMask(
          //   shaderCallback: (rect) =>
          //       Palette.createRoomGradient.createShader(rect),
          //   child: Icon(
          //     Icons.video_call,
          //     size: 35.0,
          //     color: Colors.white,
          //   ),
          // ),
          Icon(
            Icons.video_call,
            size: 35.0,
            color: Colors.purple,
          ),
          SizedBox(width: 4.0),
          Text('Create\nroom'),
        ],
      ),
    );
  }
}

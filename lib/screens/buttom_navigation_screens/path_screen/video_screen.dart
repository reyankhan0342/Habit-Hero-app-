// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatefulWidget {
  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController _controller;

  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    // Replace 'assets/sample_video.mp4' with your asset path.
    _controller = VideoPlayerController.asset('assets/icons/gymvideo.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.addListener(_videoPlayerListener);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _videoPlayerListener() {
    if (mounted) {
      setState(() {}); // Trigger a rebuild when video position changes
    }
  }

  void setPreferredOrientations(bool isLandscape) {
    SystemChrome.setPreferredOrientations(
      isLandscape
          ? [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]
          : [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
    );
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      // Determine if the device is in landscape orientation
      bool isLandscape = orientation == Orientation.landscape;

      return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            FutureBuilder(
              future: _initializeVideoPlayerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: Stack(fit: StackFit.expand, children: [
                      VideoPlayer(_controller),
                      // VideoProgressIndicator(
                      //   _controller,
                      //   allowScrubbing:
                      //       true, // Allow user to scrub through the video
                      // ),
                    ]),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            // Container(
            //   height: double.infinity,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //         image: isLandscape
            //             ? AssetImage('assets/image 9.png')
            //             : AssetImage("assets/videoimage.png"),
            //         fit: isLandscape ? BoxFit.fitWidth : BoxFit.cover),
            //   ),
            // ),
            isLandscape
                // this is the 28 image and the cross imade Row at Top
                ? Positioned(
                    top: 10.0,
                    left: 10.0,
                    right: 10.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setPreferredOrientations(!isLandscape);
                          },
                          child: SvgPicture.asset(
                            "assets/icons/Progress.svg",
                            width: 80,
                            height: 86,
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset("assets/icons/Close.svg")),
                      ],
                    ),
                  )
                : Positioned(
                    top: 60.0,
                    left: 10.0,
                    right: 10.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setPreferredOrientations(!isLandscape);
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => CongratulationScreen()));
                          },
                          child: SvgPicture.asset(
                            "assets/icons/Progress.svg",
                            width: 80,
                            height: 86,
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset("assets/icons/Close.svg")),
                      ],
                    ),
                  ),
            isLandscape
                // bottom container having play pause text etc
                ? Positioned(
                    bottom: 20,
                    right: 0,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 200,
                            height: 80,
                            margin: EdgeInsets.only(top: 48),
                            decoration: BoxDecoration(
                                color: Colors.black
                                    .withOpacity(0.5), // Set opacity here
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(22.0),
                                  topRight: Radius.circular(22.0),
                                  bottomLeft: Radius.circular(22.0),
                                  bottomRight: Radius.circular(22.0),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 30, left: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (!isLandscape)
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text(
                                        "Morning refresh",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 21,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  // Padding(
                                  //   padding: const EdgeInsets.only(left: 10),
                                  //   child:
                                  //       SvgPicture.asset("assets/lineee.svg"),
                                  // ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 25, left: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0),
                                              child: Text(
                                                // Display the current playback position as minutes and seconds
                                                _formatDuration(_controller
                                                        .value.position ??
                                                    Duration(seconds: 0)),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 8.0),
                                              child: Text(
                                                // Display the total duration of the video as minutes and seconds
                                                _formatDuration(_controller
                                                        .value.duration ??
                                                    Duration(seconds: 0)),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: SizedBox(
                              child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (_controller.value.isPlaying) {
                                      _controller.pause();
                                    } else {
                                      _controller.play();
                                    }
                                  });
                                },
                                child: _controller.value.isPlaying
                                    ? SvgPicture.asset(
                                        "assets/icons/pausee.svg")
                                    : SvgPicture.asset(
                                        "assets/icons/playy.svg")),
                          )),
                        ),
                      ],
                    ),
                  )
                : Positioned(
                    bottom: 0,
                    left: 5,
                    right: 5,
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: double.infinity,
                            height: 120,
                            margin: EdgeInsets.only(top: 48),
                            decoration: BoxDecoration(
                              color: Colors.black
                                  .withOpacity(0.5), // Set opacity here
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(16.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 30, left: 10, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (!isLandscape)
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: GestureDetector(
                                        onTap: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //       builder: (context) =>
                                          //           CongratulationScreen(),
                                          //  ));
                                        },
                                        child: Text(
                                          "Morning refresh",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 21,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  // showing the progres line
                                  // Padding(
                                  //   padding: const EdgeInsets.only(left: 10),
                                  //   child: GestureDetector(
                                  //       onTap: () {
                                  //         Navigator.push(
                                  //             context,
                                  //             MaterialPageRoute(
                                  //               builder: (context) =>
                                  //                   CongratulationScreen(),
                                  //             ));
                                  //       },
                                  //       child: SvgPicture.asset(
                                  //           "assets/lineee.svg")),
                                  // ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: VideoProgressIndicator(
                                      colors: VideoProgressColors(
                                          playedColor: Colors.green),
                                      _controller,
                                      allowScrubbing: true,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            // Display the current playback position
                                            "${_formatDuration(_controller.value.position ?? Duration(seconds: 0))}",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 8.0),
                                          child: Text(
                                            // Display the total duration of the video
                                            "${_formatDuration(_controller.value.duration ?? Duration(seconds: 0))}",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.topRight,
                            child: SizedBox(
                                width: isLandscape ? null : null,
                                height: isLandscape ? null : null,
                                child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (_controller.value.isPlaying) {
                                          _controller.pause();
                                        } else {
                                          _controller.play();
                                        }
                                      });
                                    },
                                    child: _controller.value.isPlaying
                                        ? SvgPicture.asset(
                                            "assets/icons/pausee.svg")
                                        : SvgPicture.asset(
                                            "assets/icons/playy.svg")))),
                      ],
                    ),
                  ),
          ],
        ),
      );
    });
  }
}

String _formatDuration(Duration duration) {
  String twoDigits(int n) => n.toString().padLeft(2, '0');
  String minutes = twoDigits(duration.inMinutes.remainder(60));
  String seconds = twoDigits(duration.inSeconds.remainder(60));

  return '$minutes:$seconds';
}

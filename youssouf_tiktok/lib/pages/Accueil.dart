import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:math' as math;

import 'package:youssouf_tiktok/auth/inscription.dart';

class AccueilPage extends StatelessWidget {
  //  AccueilPage({super.key});

  final List<Map> items = [
    {
      "video": "assets/videos/vid4.mp4",
    },
    {
      "video": "assets/videos/vid2.mp4",
    },
    {
      "video": "assets/videos/vid3.mp4",
    },
  ];

  final _controller = PageController(initialPage: 0);

  AccueilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          scrollDirection: Axis.vertical,
          viewportFraction: 1.0),
      items: items.map((item) {
        return Builder(builder: (BuildContext context) {
          return Container(
            color: const Color.fromARGB(255, 187, 194, 212),
            child: Stack(
              children: [video(videourl: item['video']), PostContent()],
            ),
          );
        });
      }).toList(),
    );
  }
}

class video extends StatefulWidget {
  const video({super.key, required this.videourl});
  final String videourl;

  @override
  State<video> createState() => _videoState(this.videourl);
}

class _videoState extends State<video> {
  late VideoPlayerController _controller;
  final String videourl;

  _videoState(this.videourl);
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(videourl)
      ..initialize().then((_) {
        _controller.play();
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}

class PostContent extends StatelessWidget {
  PostContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   height: 300,
        // ),
        Container(
          height: 100,
          padding: const EdgeInsets.only(top: 40),
          // color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Abonnements',
                style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 20),
              Text(
                'Pour toi',
                style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '@YoussoufDjire_01',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Malikadiii troop. #Mali @SidikiDiabate # Malien wood',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.music_note,
                            color: Colors.white,
                            size: 15,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Original Sound ',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                child: Container(
                  width: 80,
                  padding: EdgeInsets.only(bottom: 10),
                  // color: Colors.green,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 80,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomCenter,
                            children: [
                              Container(
                                margin: EdgeInsets.only(bottom: 10), 
                                child: CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(
                                    'assets/images/moi1.png',
                                  ),
                                ),

                                // height: 80,
                                // color: Colors.blue,
                              ),
                              Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: InkWell(
                                  onTap: () => {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (_) => MonInscrp(),
                                      ),
                                    ),
                                  },
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 80,

                        child: Column(
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.white.withOpacity(0.85),
                              size: 45,
                            ),
                            Text(
                              '5.0K',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),

                        // color: Colors.teal,
                      ),
                      Container(
                        height: 80,

                        child: Column(
                          children: [
                            Icon(
                              Icons.comment,
                              color: Colors.white.withOpacity(0.85),
                              size: 45,
                            ),
                            Text(
                              '16',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),

                        // color: Colors.yellow,
                      ),
                      Container(
                        height: 80,

                        child: Column(
                          children: [
                            Icon(
                              Icons.share,
                              color: Colors.white.withOpacity(0.85),
                              size: 45,
                            ),
                            Text(
                              '12',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),

                        // color: Colors.purple,
                      ),
                      AnimatedLogo(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

//Animation

class AnimatedLogo extends StatefulWidget {
  AnimatedLogo({Key? key}) : super(key: key);

  @override
  _AnimatedLogoState createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 4000),
      vsync: this,
    );
    _controller.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, child) {
        return Transform.rotate(
          angle: _controller.value * 2 * math.pi,
          child: child,
        );
      },
      child: Container(
        height: 45,
        width: 45,
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: AssetImage("assets/images/disc_icon.png"),
          ),
        ),
        child: Image.asset('assets/images/tiktok_icon.png'),
      ),
    );
  }
}

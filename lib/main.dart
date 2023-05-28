import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('paper rock scissors game'),
          backgroundColor: Colors.blue,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftImage = 1;
  int rightImage = 1;
  Color color = Colors.white;
  IconData icon = Icons.grading;

  /*
  img1= cut
  img2= rook
  img3= paper


  white=equal
  red= loss
  green= yas
   */

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: color,
                size: 48,
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Image(
                        image: AssetImage('images/img$leftImage.png'),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      'You',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 50,
                child: Center(
                  child: Text(
                    'VS',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          leftImage = Random().nextInt(3) + 1;
                          rightImage = Random().nextInt(3) + 1;
                          if (leftImage == 1 && rightImage == 1) {
                            setState(() {
                              icon = Icons.grading;
                              color = Colors.white;
                            });
                          } else if (leftImage == 1 && rightImage == 2) {
                            setState(() {
                              icon = Icons.thumb_down;
                              color = Colors.red;
                            });
                          } else if (leftImage == 1 && rightImage == 3) {
                            setState(() {
                              icon = Icons.thumb_up;
                              color = Colors.green;
                            });
                          } else if (leftImage == 2 && rightImage == 1) {
                            setState(() {
                              icon = Icons.thumb_up;
                              color = Colors.green;
                            });
                          } else if (leftImage == 2 && rightImage == 2) {
                            setState(() {
                              icon = Icons.grading;
                              color = Colors.white;
                            });
                          } else if (leftImage == 2 && rightImage == 3) {
                            setState(() {
                              icon = Icons.thumb_down;
                              color = Colors.red;
                            });
                          } else if (leftImage == 3 && rightImage == 1) {
                            setState(() {
                              icon = Icons.thumb_down;
                              color = Colors.red;
                            });
                          } else if (leftImage == 3 && rightImage == 2) {
                            setState(() {
                              icon = Icons.thumb_up;
                              color = Colors.green;
                            });
                          } else if (leftImage == 3 && rightImage == 3) {
                            setState(() {
                              icon = Icons.grading;
                              color = Colors.white;
                            });
                          }
                        });
                      },
                      child: Image(
                        image: AssetImage('images/img$rightImage.png'),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      'System ',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                leftImage = 1;
                roundedWiner();
              });
            },
            child: const Image(
              width: 80,
              height: 80,
              image: AssetImage('images/img1.png'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    leftImage = 2;

                    roundedWiner();
                  });
                },
                child: const Image(
                  width: 80,
                  image: AssetImage('images/img2.png'),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    leftImage = 3;
                    roundedWiner();
                  });
                },
                child: const Image(
                  width: 80,
                  image: AssetImage('images/img3.png'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void roundedWiner() {
    rightImage = Random().nextInt(3) + 1;
    if (leftImage == 1 && rightImage == 1) {
      setState(() {
        icon = Icons.grading;
        color = Colors.white;
      });
    } else if (leftImage == 1 && rightImage == 2) {
      setState(() {
        icon = Icons.thumb_down;
        color = Colors.red;
      });
    } else if (leftImage == 1 && rightImage == 3) {
      setState(() {
        icon = Icons.thumb_up;
        color = Colors.green;
      });
    } else if (leftImage == 2 && rightImage == 1) {
      setState(() {
        icon = Icons.thumb_up;
        color = Colors.green;
      });
    } else if (leftImage == 2 && rightImage == 2) {
      setState(() {
        icon = Icons.grading;
        color = Colors.white;
      });
    } else if (leftImage == 2 && rightImage == 3) {
      setState(() {
        icon = Icons.thumb_down;
        color = Colors.red;
      });
    } else if (leftImage == 3 && rightImage == 1) {
      setState(() {
        icon = Icons.thumb_down;
        color = Colors.red;
      });
    } else if (leftImage == 3 && rightImage == 2) {
      setState(() {
        icon = Icons.thumb_up;
        color = Colors.green;
      });
    } else if (leftImage == 3 && rightImage == 3) {
      setState(() {
        icon = Icons.grading;
        color = Colors.white;
      });
    }
  }
}

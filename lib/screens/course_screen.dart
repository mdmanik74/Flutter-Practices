import 'package:codes/screens/description_screen.dart';
import 'package:codes/screens/video_screen.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatefulWidget {
  String img;
  CourseScreen(this.img, {super.key});

  // ignore: recursive_getters

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isVideoselection = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            widget.img.toUpperCase(),
            style:
                const TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications,
                size: 28,
                color: Colors.blue,
              ),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 164, 245, 236),
              image: DecorationImage(
                image: AssetImage('assets/images/${widget.img}.png'),
                scale: 1,
              ),
            ),
            child: Center(
                child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: const Icon(
                Icons.play_arrow_rounded,
                color: Colors.blue,
                size: 35,
              ),
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "${widget.img} Complete The Course".toUpperCase(),
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 2,
          ),
          const Text(
            "Created by Dear Programmer last edit : 2023",
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const SizedBox(
            height: 2,
          ),
          const Text(
            "Total video : 55 (36 Hours)",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Material(
                  color: isVideoselection ? Colors.red : Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isVideoselection = true;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 35),
                      child: const Text(
                        "Videos",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: isVideoselection ? Colors.black : Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isVideoselection = false;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 35),
                      child: const Text(
                        "Description",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          isVideoselection ? const VideoScreen() : const DescriptionScreen(),
        ]),
      ),
    );
  }
}

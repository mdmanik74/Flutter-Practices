import 'package:codes/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List catNames = [
    'Category',
    'Classes',
    'Free Course',
    'BookStore',
    'Live Course',
    'LeaderBoard',
  ];
  List<Color> catColors = [
    const Color(0xFFFFCF2F),
    const Color(0xFF6FE08D),
    const Color(0xFF61BDFD),
    const Color(0xFFFC7F7F),
    const Color(0xFFCB84FB),
    const Color(0xFF78E667),
  ];
  List<Icon> catIcons = [
    const Icon(
      Icons.category,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.video_library,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.assessment,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.store,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.play_circle_fill,
      color: Colors.white,
      size: 30,
    ),
    const Icon(
      Icons.emoji_events,
      color: Colors.white,
      size: 30,
    ),
  ];
  List imgList = [
    'Flutter',
    'React Native',
    'Python',
    'C#',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 15, left: 15, right: 15, bottom: 10),
              decoration: const BoxDecoration(
                color: kblue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.dashboard,
                          size: 30,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.notification_add,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.only(left: 3, bottom: 15),
                      child: Text(
                        'Hi Programmer',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            wordSpacing: 2,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 5, bottom: 20),
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search Here',
                            hintStyle: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 25,
                            )),
                      ),
                    )
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(children: [
                GridView.builder(
                  itemCount: catNames.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.1,
                  ),
                  itemBuilder: (BuildContext context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: catColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: catIcons[index],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          catNames[index],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.7)),
                        )
                      ],
                    );
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Courses',
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF674AEF)),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                GridView.builder(
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 4,
                      mainAxisExtent: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (BuildContext context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 243, 219, 5),
                        ),
                      ),
                    );
                  },
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

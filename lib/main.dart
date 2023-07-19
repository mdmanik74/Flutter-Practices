import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // ignore: prefer_typing_uninitialized_variables
  var controller;
  @override
  void initState() {
    controller = PageController(
      viewportFraction: 0.8,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          children: [
            Container(
              child: Image.asset('/assets/images/1.jpg'),
              color: Colors.red,
              child: const Center(
                child: Text('Page 01'),
              ),
            ),
            Container(
              color: Colors.indigo,
              child: const Center(
                child: Text('Page 02'),
              ),
            ),
            Container(
              color: Colors.green,
              child: const Center(
                child: Text('Page 03'),
              ),
            ),
            Container(
              color: Colors.yellow,
              child: const Center(
                child: Text('Page 04'),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () => controller.jumpToPage(2),
                child: const Text('SKIP')),
            Flexible(
              child: SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: const WormEffect(),
              ),
            ),
            TextButton(
                onPressed: () => controller.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut),
                child: const Text('NEXT')),
          ],
        ),
      ),
    );
  }
}



/*
import 'package:flutter/material.dart';

import 'Page2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Profile Example',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              child: const Text('Please Click Here'),
              onPressed: () {
               /* Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Page2(
                              texts: 'hlw',
                            )));
                            */

                            Navigator.of(context).pushReplacementNamed(MaterialPageRoute(builder: (context)=>const Page2(texts: 'Ji'),) as String,);
              },
            ),
          ),
        ],
      ),
    );
  }
}

*/
/*
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  final _formField = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Profile Example',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Column(children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/6.jpg'),
              radius: 50,
            ),
            const SizedBox(height: 50),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email)),
            ),
            const SizedBox(height: 20),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              controller: passController,
              decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock)),
            ),
            const SizedBox(height: 60),
            InkWell(
              onTap: () {},
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

*/

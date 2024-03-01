import 'package:flutter/material.dart';

import 'activities.dart';
import 'homePage.dart';
import 'lifeStoryPage.dart';

class Publish extends StatelessWidget {
  const Publish({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Text(
            "English   ",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          )
        ],
        title: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Homepage(),
              ),
            );
          },
          child: const Text(
            "নীলিমা ইব্রাহিম",
            style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LifeStoryPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "জীবনের গল্প",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Activities(),
                        ),
                      );
                    },
                    child: const Text(
                      "কার্যক্রম",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Publish(),
                        ),
                      );
                    },
                    child: const Text(
                      "প্রকাশনা",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "স্মৃতিচারন",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "মিডিয়া",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "গ্যালারি",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "সমাচার",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "যোগাযোগ",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "প্রকাশনা      ",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/1.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "আমি বীরাঙ্গনা বলছি",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("জাগৃতি প্রকাশনী"),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/2.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "শ্রীকৃষ্ণকীর্তন কাব্য পাঠের ভূমিকা",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("সময় প্রকাশন"),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/3.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "বেগম শেখ ফজিলাতুন্নেছা মুজিব",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("জাগৃতি প্রকাশনী"),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/4.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "বিন্দু-বিসর্গ",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("জাগৃতি প্রকাশনী"),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/5.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "উপন্যাসসমগ্র",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("জাগৃতি প্রকাশনী"),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/6.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "গল্পসমগ্র",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("সময় প্রকাশন"),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/7.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "বস্টনের পথে",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("নালন্দা"),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/8.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "শাহী এলাকার পথে পথে",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("নালন্দা"),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/9.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "শরৎ প্রতিভা",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/10.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "অগ্নিস্নাত বঙ্গবন্ধুর"
                        "\nভস্মাচ্ছাদিত কন্যা"
                        "\nআমি",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("সময় প্রকাশন"),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/11.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "সূর্যোদয় থেকে সূর্যাস্ত:"
                        "\nঅতপর কৃষ্ণান্ধকারসূর্যোদয়"
                        "\nথেকে সূর্যাস্ত:"
                        "\nঅতপর কৃষ্ণান্ধকার",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("আগামী প্রকাশনী"),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/12.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "রচনা সমগ্র-১",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text("সময় প্রকাশন"),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/13.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "বাংলার কবি মধুসুদন",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/14.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "বাংলার নাটক উৎসওধার",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/15.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "শতাব্দীর অন্ধকারে",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 100,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/16.png'),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "শ্রীকৃষ্ণকীর্তন কাব্য পাঠের ভুমিকা",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                const SizedBox(width: 30),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/17.png'),
                      // const SizedBox(height: 30),
                      const Text(
                        "শাহী এলাকার পথে পথে",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const Text("জাগৃতি প্রকাশনী"),
                    ],
                  ),
                ),
                // const SizedBox(width: 50),
                Expanded(
                  child: Column(
                    children: [
                      Image.asset('assets/images/18.png'),
                      const SizedBox(height: 30),
                      const Text(
                        "উনবিংশ শতাব্দীর বাঙ্গালী সমাজ ও বাংলা নাটক",
                        style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 60,
              color: Colors.black,
              child: const Center(
                child: Text(
                  "Copyright 2022, All Rights Reserved",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

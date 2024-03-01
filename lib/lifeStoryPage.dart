import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:ni/publish.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'activities.dart';
import 'homePage.dart';

class LifeStoryPage extends StatefulWidget {
  const LifeStoryPage({super.key});

  @override
  State<LifeStoryPage> createState() => _LifeStoryPageState();
}

class _LifeStoryPageState extends State<LifeStoryPage> {
  late List<Widget> appBarItem;

  String videoURL = "https://youtu.be/tldULYFyr_w";

  YoutubePlayerController? _controller;

  @override
  void initState() {
    super.initState();

    appBarItem = [
      const SizedBox(
        height: 100,
      ),
      Flexible(
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "জীবনের গল্প",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Flexible(
        child: TextButton(
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
      ),
      const SizedBox(
        height: 10,
      ),
      Flexible(
        child: TextButton(
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
      ),
      const SizedBox(
        height: 10,
      ),
      Flexible(
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "স্মৃতিচারন",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Flexible(
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "মিডিয়া",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Flexible(
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "গ্যালারি",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Flexible(
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "সমাচার",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Flexible(
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "যোগাযোগ",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          ),
        ),
      ),
    ];

    final videoID = YoutubePlayer.convertUrlToId(videoURL);

    if (videoID != null) {
      _controller = YoutubePlayerController(
        initialVideoId: videoID,
        flags: const YoutubePlayerFlags(autoPlay: false),
      );
    } else {
      // Handle the case where videoID is null
      print('Error: Invalid video URL');
    }
  }

  bool mobile = false;

  @override
  Widget build(BuildContext context) {
    mobile = MediaQuery.of(context).size.width > 700 ? false : true;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110,
        // leading: mobile ? null : Row(children: appBarItem),
        actions: const [
          Text(
            "English   ",
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 16,
            ),
          )
        ],
        title: Column(
          children: [
            SizedBox(height: 40),
            TextButton(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: mobile ? [] : appBarItem,
            ),
          ],
        ),
        centerTitle: true,
      ),
      drawer: mobile
          ? Drawer(
              child: ListView(
                children: appBarItem,
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "জীবনের গল্প      ",
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: SizedBox(
                    child: SlideInLeft(
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.contain,
                        width: 300,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                const Flexible(
                  child: Text(
                      "বাংলাদেশের শিক্ষা-সাহিত্য-সংস্কৃতি, নারী-উন্নয়ন, সমাজসেবা, গণতান্ত্রিক-সংগ্রাম ও মননচর্চার ইতিহাসে ডক্টর নীলিমা ইব্রাহিম একটি উজ্জ্বল ও বিশিষ্ট নাম।"
                      "\nমানবকল্যাণ- আকাঙ্ক্ষাই তার সকল কর্মের কেন্দ্রীয় প্রেরণা।"
                      "\nবস্তুত, দীর্ঘ একাশি বছরের জীবনবৃত্তে তার সকল কর্মের মুখ্য চালিকাশক্তি ছিল এই মানবকল্যাণকামী দর্শন। "
                      "\nযে-কালে বাংলাদেশের নারীরা নিজেদের অধিকার সম্পর্কে ভাবতে শুরু করেনি, সে কালে নীলিমা ইব্রাহিম "
                      "\nনারীর অধিকার ও স্বাতন্ত্র্যচেতনা নিয়ে কাজ করতে আরম্ভ করেন;"
                      "\n লেখার মধ্য দিয়ে বাংলাদেশের নারীদের করে তুলতে চান অধিকার-সচেতন ও সাবলম্বী।"
                      "\n দীর্ঘ কর্মজীবনে তিনি জড়িত ছিলেন জাতীয় নানা প্রতিষ্ঠানের সঙ্গে, সংশ্লিষ্ট ছিলেন আন্তর্জাতিক নানা সঙ্ঘ ও সমিতির সঙ্গে।"
                      "\n বাংলাদেশের হাতে-গোনা কয়েকজন অগ্রগণ্য নারীর মধ্যে ডক্টর নীলিমা ইব্রাহিমের নাম প্রথম সারিতে।"
                      "\n অশীতিপর এই নারী, জীবনাচরণে যিনি ছিলেন সর্বদাই চিরতরুণ, নিঃসন্দেহে আমাদের জাতির অনন্য গৌরব।"),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "প্রামাণ্যচিত্র অপরাজিত",
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 300,
              width: 400,
              child: ListView(
                children: [YoutubePlayer(controller: _controller!)],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(50.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "জন্ম ও বংশ-পরিচয়",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                      "খুলনা জেলার বাগেরহাট ফকিরহাট থানার মূলঘর গ্রামে ১৯২১ সালের ১১ই অক্টোবর, সোমবার, সকাল দশটায়, তাঁর পিত্রালয়ে, নীলিমা ইব্রাহিম—তখন নীলিমা রায় চৌধুরী—জন্মগ্রহণ করেন। নীলিমা ইব্রাহিমের পিতার নাম প্রফুল্লকুমার রায়-চৌধুরী আর মাতা কুসুমকুমারী দেবী। কুসুমকুমারী দেবীর মূল নাম ছিল প্রফুল্লবালা — স্বামী- স্ত্রীর নাম এক হয়ে যায় দেখে শ্বশুরকুল তার নতুন নাম রাখেন— ‘প্রফুল্লবালা’ হয়ে উঠলেন ‘কুসুমকুমারী’। প্রফুল্লকুমার ছিলেন মূলঘর বৈদ্য- চৌধুরী বংশের অধঃস্তন পুরুষ। ওই বংশের এক পূর্ব-পুরুষ ইংরেজ সরকার কর্তৃক রাজা উপাধি পেয়েছিলেন। তার নাম ছিল শ্রীনাথ। মূলঘরের এই জমিদার বংশ পুরুষানুক্রমিকভাবেই ছিল প্রবল প্রতাপশালী। মূলঘর এলাকায় আজও এ প্রবাদ প্রচলিত আছে যে, রায়- চৌধুরী বংশের জমিদারদের প্রতাপে বাঘে-গরুতে এক ঘাটে জল খেত। নীলিমা ইব্রাহিমের পিতামহের নাম যোগেশচন্দ্র রায় চৌধুরী আর পিতামহী স্বর্ণময়ী রায় চৌধুরী। যোগেশচন্দ্র খুলনা কালেকটরিয়েটে উচ্চপদে চাকুরি করতেন। বিত্তশালী হওয়া সত্ত্বেও আভিজাত্য প্রকাশক বলে তিনি সরকারি চাকুরি গ্রহণ করেন। যোগেশচন্দ্র ছিলেন অটল স্বদেশপ্রেমিক। ব্রিটিশ-বিরোধিতা ছিল তার চরিত্রের অন্যতম বৈশিষ্ট্য। যোগেশচন্দ্রের এই রাজনৈতিক সচেতনতা পুত্র প্রফুল্লকুমারও লাভ করেছিলেন। উত্তরকালে স্বদেশপ্রেমের এই পবিত্র ধারাজলে স্নাত হয়েছেন নীলিমা ইব্রাহিমও। প্রসঙ্গত স্মরণীয় নীলিমা ইব্রাহিমের স্মৃতিচারণা—"),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                      "‘আমার দাদু ছিলেন বড় কঠিন এবং কঠোর অভিভাবক। তার ওপর ইংরেজ বিদ্বেষী। মৃত্যুর আগ মুহূর্তে তাকে কাচের মেজর গ্লাসে ওষুধ খাওয়াতে গেলে তিনি ধাক্কা দিয়ে গ্লাস ফেলে দেন। জীবনে তিনি কাচের পাত্রে কিছু গ্রহণ করেননি এবং বাড়ির মেয়েদের কখনও কাচের চুড়ি পরতে দেননি। সেই ট্রাডিশন কিন্তু বাবাও মেনে চলেছেন।… এখানে এসে সুন্দর সুন্দর কাচের চুড়ি দেখে বুড়ো বয়সেও পরতে সাধ জাগে। বাবার কথা মনে করে আজও সেদিকে হাত বাড়াই না। যুক্তিবাদী মন বলে এগুলো তো বিলাতী নয়, আমাদের দেশে তৈরি, তবু প্রথাগত সংস্কার বড় বালাই। (বিন্দু-বিসর্গ)’"),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                      "নীলিমা ইব্রাহিমের মানস গঠনে পিতা প্রফুল্লকুমারের প্রভাব ছিল ব্যাপক। প্রফুল্লকুমারের রাজনীতি চেতনা, পাণ্ডিত্য ও সাহিত্য-অনুরাগ নীলিমা ইব্রাহিমের মানসলোকে অলক্ষ্যে সঞ্চারিত হয়েছে। পিতার কথা বলতে গিয়ে নীলিমা ইব্রাহিম লিখেছেন— ‘আমাদের বিশেষ করে আমার জীবনে আমার বাবার প্রভাব খুব বেশি। বাবা প্রফুল্লকুমার বিদ্বান, তীক্ষ্ণধী, পণ্ডিত ও সাহিত্যরসিক ছিলেন। বিদ্যা ও পাণ্ডিত্যকে আমি তার ক্ষেত্রে পৃথক করছি, এ কারণে যে, ক্ষেরোপযোগী সকল বিদ্যাই তার করায়ত্ত ছিল। ইংরেজি সাহিত্য, বাংলা সাহিত্য, সংস্কৃত সাহিত্য, ইতিহাস ও অর্থনীতি ছিল তার অবাধ স্বাচ্ছন্দ বিচরণ ক্ষেত্র। জল থেকে ক্ষীর গ্রহনের শক্তি তিনি অর্জন করেছিলেন।’"),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                      "প্রফুল্লকুমার নাটা-অভিনয়েও ছিলেন পারদর্শী। পিতার অভিনয়-প্রিয়তাও লাভ করেছেন নীলিমা ইব্রাহিম। নাটক ও নাট্য-অভিনয় নীলিমা ইব্রাহিমের কর্মময় জীবনের এক উজ্জ্বল এলাকা। উত্তরকালে বাংলা নাটকের ওপর উচ্চতর গবেষণা করে তিনি পিএইচ. ডি. ডিগ্রি অর্জন করেন, লেখেন একাধিক মৌলিক নাটক, ‘আমি বীরাঙ্গনা বলছি’র (১৯৯৬) মতো অসামান্য কথানাট্য। পিতার অভিনয়প্রিয়তা দ্বারা কীভাবে তিনি প্রভাবিত হয়েছেন, নিচের স্মৃতিচারণায় তা অভিব্যক্ত—’বাবা অভিনয় ভালবাসতেন এবং অভিনয় করতেন। খুলনা নাট্যমন্দির ছিল তার প্রাণ। দীর্ঘকাল তিনি এ প্রতিষ্ঠানের সেক্রেটারি ছিলেন।… বাবার এ-অভিনয় প্রতিভা ও প্রীতি অল্প-স্বল্প সব ভাইবোনের ভেতরই ছিল। আমি ঢাকা বিশ্ববিদ্যালয়ে এসে ছাত্রদের সঙ্গে বেশ ভিড়ে গেলাম, তবে অভিনয় করতে নয়, করাতে। ১৯৬২ সালে ঢাকায় ‘রঙ্গম’ নামে একটা সখের নাট্যগোষ্ঠী করেছিলাম। সঙ্গে ছিলেন রণেন কুশারী, সঙ্গীক মুনীর চৌধুরী, কবি হাবিবুর রহমান, কাফী খান ইত্যাদি। কিন্তু আমার আর পাঁচটা আকাঙ্ক্ষার মতো এটারও অকাল মৃত্যু ঘটেছিল।’"),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                      "শৈশবজীবনে মা-ঠাকুরমার চারিত্র্যস্বভাব দ্বারাও প্রভাবিত হয়েছেন নীলিমা ইব্রাহিম। তার ঠাকুরমা ছিলেন রসিক মানুষ। ঠাকুরমার কথা বলতে গিয়ে নীলিমা ইব্রাহিম লিখেছেন আমার মানসগঠনে ঠাকুরমার অবদান কম নয়। সরাসরি উপদেশ দিয়ে নয়, তাকে ভালবাসতাম বলে অলক্ষ্যে তার প্রভাব আমার ওপর পড়েছে।’ মা কুসুমকুমারীর সত্যবাদী মানসপ্রবণতা দ্বারা নীলিমা ইব্রাহিম গভীরভাবে প্রভাবিত হন। সত্যবাদী মানসচারিত্র্যের কারণে উত্তরজীবনে নীলিমা ইব্রাহিম অনেকের বিরাগভাজনে পরিণত হন, হয়ে ওঠেন অনেকের শত্রু। সতা ভাষণের জনাই পত্রিকার একটি কলামের জন্য মহীয়সী এই নারীকে ছিয়াত্তর বছর বয়সেও বিচারালয়ের কাঠগড়ায় দাঁড়াতে হয়েছে। মা’র কথা বলতে গিয়ে নীলিমা ইব্রাহিম লিখেছেন “মিথ্যাচারকে মা সবচেয়ে বেশি ঘৃণা করতেন। আমরা কেউ কখনো শৈশবে আত্মরক্ষার্থে মিথ্যার আশ্রয় নিলে মার কাছে রেহাই ছিল না। মা ছিলেন অত্যন্ত স্পষ্টবাদী অ বস্তুনিষ্ঠ। সংসার, সমাজ, পরিবেশ ও তার শৃঙ্খলাকে তিনি সর্বতোভাবে শ্রদ্ধা। করতেন, বিদ্রোহ ও বিপ্লব তার ধাতে ছিল না।"),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(50.0),
              child: Column(
                children: [
                  Text(
                    "শৈশবজীবন",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                      "নীলিমা ইব্রাহিমের শৈশব-কৈশোরের স্বপ্নরঙিন দিনগুলো কেটেছে মূলঘর গ্রাম ও খুলনা শহরে। বিরাট পারিবারিক পরিমণ্ডলে তিনি বেড়ে উঠেছেন। রবীন্দ্রনাথ যেমন বলেছেন, ‘আগের দিনের বড় বড় বর্দ্ধিষ একান্নবর্তী পরিবারে ছিল ভৃত্যরাজতন্ত্র’, নীলিমা ইব্রাহিমও তেমনি এক ভৃত্যরাজতন্ত্রের পরিমণ্ডলে অতিবাহিত করেছেন তার শৈশবজীবন। শৈশবকালীন পারিবারিক পরিমণ্ডল সম্পর্কে বলতে গিয়ে তিনি লিখেছেন ——– ‘খুলনায় আমাদের পরিবারভুক্ত ছিলাম আমরা দু’ভাই ও সাত বোন, মেজো কাকা প্রবোধচন্দ্রের দু’ ছেলে ও ভূ মেয়ে, আমার ঠাকুমা; তিন-চারজন পড়ুয়া ছেলে, আবাস- বাসস্থান ফ্রি, ছোটদের গৃহশিক্ষক আর নারী-পুরুষ মিলে ছোট-খাটো একটি ভৃত্য-বিশ্লেষ, ঝি, চাকর,মালি, বেয়ারা ইত্যাদি ছাড়া আমাদের বাড়িতে একজন মহিলাও থাকতেন।’"),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                      "শৈশব-কৈশোরে নীলিমা ইব্রাহিম ছিলেন দুরস্ত ও ডানপিটে স্বভাবের। মাঠে ফুটবল খেলেছেন, ছেলেদের সঙ্গে রাস্তায় ঘুরেছেন, অভিনয় করেছেন শখের থিয়েটারে। মুক্ত পরিমণ্ডলে বেড়ে উঠেছেন বলে শৈশব থেকেই নীলিমা ইব্রাহিমের মানসলোকে উপ্ত হয়েছিল স্বাধিকার-প্রমত্ত মানসিকতার বীজ। নিজের শৈশবজীবনের কথা বলতে গিয়ে নীলিমা ইব্রাহিম লিখেছেন— ‘আমাদের জীবনটা ছিল অনেকখানি খোলা-মেলা। বারো-তেরো বছর বয়স পর্যন্ত মাঠে ভাইদের সঙ্গে ফুটবল খেলেছি। মায়ের কাছে নালিশ আসত কিন্তু একেবারেই গেছো ছিলাম বলে মাও হাল ছেড়ে দিয়েছিলেন। মাঝে মধ্যে দুঃখ করে বলতেন, এ মেয়ে নিয়ে আমি করবটা কি? যেমন আকৃতি, তেমনি প্রকৃতি। আমিও মনে মনে এ আকৃতি-প্রকৃতি নিয়ে জীবনযুদ্ধে লড়াই করার জন্য শক্তি সঞ্চয় করতাম। তখন ‘দেবী চৌধুরানী’ পড়ে ফেলেছি। বাড়ির ও আশেপাশের পুকুরে ঝাপঝাপি’ দাপাদাপি, কুল, জামরুল, জাম, কাঁচা আমের বংশ লোপ, এসব ছিল যেন আমার জন্মগত অধিকার। একবার ডুবে গিয়েছিলাম। আমার এক বান্ধবী আর সঙ্গী একটা ছেলে টেনে তুলেছিল। ছেলেটা প্রায়ই ঘ্যান ঘ্যান করত জানিস আমি তোকে প্রাণে বাঁচিয়েছি। বোধহয় ওকে কাব্যি রোগে ধরেছিল। ত্রাণকর্তা আজ কোথায়? ধরাধাম ত্যাগ করেছেন কিনা তাও জানি না।’"),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                      "কেবল দুরস্তুপনাই নয়, শৈশব-কৈশোরে নীলিমা ইব্রাহিমের মানসলোকে দেশপ্রেম স্বাধীনতার আকাঙ্ক্ষাও সঞ্চারিত হয়েছিল। পারিবারিক পরিমণ্ডলই এক্ষেত্রে তাঁকে প্রণোদনা সঞ্চার করেছে। তিনি লিখেছেন ‘এইসব ছেলেমানুষীর সঙ্গে সঙ্গে কিন্তু একটা সংঘবদ্ধ রাজনৈতিক চেতনা আমাদের ভেতরে কাজ করেছিল। বড়রা কংগ্রেস করতেন, আমরা কিন্তু সব বিপ্লব-পন্থী। কোথা থেকে বই-পত্র আসত, কেউ জানতাম না। শুধু যাকে যে কাজ করতে বলা হত, সে তাই করত।’ এ-সময়েই পুলিশি নির্যাতন, ঔপনিবেশিক শোষণ এসব বিষয় সম্পর্কে নীলিমা ইব্রাহিম প্রাথমিক জ্ঞান লাভ করতে থাকেন। দেশে তখন গান্ধীর নেতৃত্বে চলছে স্বরাজ আন্দোলন।"),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                      "গান্ধীর স্বরাজ আন্দোলন দ্বারা শৈশবেই নীলিমা ইব্রাহিম প্রভাবিত হয়েছিলেন। এ-প্রসঙ্গে তার শৈশব- জীবনের একটা ঘটনা এখানে উল্লেখ করা যায়। তিনি লিখেছেন—"),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                      "আমি তখন খুব ছোট। চার-পাঁচ বছর বয়স হবে। তখন মহাত্মা গান্ধী খুলনায় এসেছিলেন। আমাদের বাড়ির সামনে যশোহর রোড পার হলেই ছিল মিউনিসিপ্যাল পার্ক। সেখানে তিনি বক্তৃতা দিতে উঠে হঠাৎ চলে গিয়েছিলেন। তার ধীরস্থির শান্ত গলায়, ‘মেরা ভাইয়ো, অউর বহিনো আজও আমার কানে বাজে। শুনতে পেলাম দেশবন্ধু চিত্তরঞ্জন দাশের আকস্মিক মৃত্যু সংবাদ পেয়ে তিনি সভা অসমাপ্ত রেখেই চলে গেলেন। দিনটি ছিল ১৩৩২ সালের ২রা আষাঢ়। এ-ঘটনা এমনভাবে আমার মনে থাকবার কথা নয়। ঘটনাটি আমার চেতনায় ছিল। পরবর্তীকালে হয়তো-বা মহাত্মাজীকে দেখে আমার মন-মানসে এক বিশেষ পারিপার্শ্বিকতায় ঠাই করে নিয়েছে।… গান্ধীজী সাহায্য প্রার্থনা করেছিলেন। অনেকে অনেক কিছু দান করেছিল। আমি আমার ছোট হাতের বালাদুটো খুলে দিয়ে এসেছিলাম।"),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(50.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "শিক্ষাজীবন",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                      "পাঁচ বছর বয়সে, ১৯২৬ সালে নীলিমা রায় চৌধুরী খুলনার করোনেশন বালিকা বিদ্যালয়ে প্রথম শ্রেণীতে ভর্তি হন। ষষ্ঠ শ্রেণী পর্যন্ত ডবল-প্রমোশনের কারণে মাত্র চৌদ্দ বছর বয়সেই তিনি প্রবেশিকা পরীক্ষায় উত্তীর্ণ হয়েছিলেন। নীলিমা ইব্রাহিমের স্মৃতিকথায় সেদিনের নারীশিক্ষার অবস্থা জানা যায়। তিনি লিখেছেন—’আমার অতি শৈশবের স্কুলের স্মৃতি মোটেই আনন্দায়ক নয়। আর কিছু মনে না থাকলেও স্কুলের দাই—তখন যাদের বলা হতো ঝি, তাদের দাপট ছিল ভয়ঙ্কর। একেক পাড়ার জন্য একজন ঝি থাকত। তারা বাড়ি বাড়ি থেকে মেয়ে জড়ো করে স্কুলে নিয়ে আসত আর স্কুল ছুটি হলে যথাসময়ে একটা হাক দিয়ে বাড়ির গেটে পৌঁছে দিয়ে যেত।… আমার কপালে যিনি পড়েছিলেন তিনি হচ্ছেন শরৎ ঝি। তার আবার একপাল ভেঁড়া ছিল। খুলনার চলতি ভাষায় ভেড়াকে বলে ‘মেড়া’। ও যখন আমাদের আর ভেড়ার পাল একসঙ্গে করে পথ দিয়ে যেত দুষ্ট ছেলেরা বলত, ‘মেড়ার মা’। এই মহিলার নাম কে যে শরং রেখেছিল জানি না কিন্তু তার কণ্ঠের বৈশাখী বস্ত্র আজও আমার কানের ভেতর দিয়ে মস্তিষ্কে আঘাত করে। আমার কাজ ছিল দূর থেকে ওকে দেখলে ছুটে পালানো। আর বাড়ির যিনি ছিলেন আমার অভিভাবিকা ‘ঝি’ কুঞ্জদাসী, তিনি আমাকে চ্যাং দোলা করে তুলে অতি নিষ্ঠুরভারে মেড়ার মায়ের হাতে সোপর্দ করত। মনে মনে এই উভয় জল্লাদের মৃত্যু কামনা করেছি।’"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "করোনেশন বালিকা বিদ্যালয়ে পড়ার সময় দু’জন শিক্ষিকা নীলিমা রায় চৌধুরীর উপর গভীর প্রভাব বিস্তার করেন। এরা হচ্ছেন সুলোচনা নাথ ও হেমাঙ্গনা নাথ। চিরকুমারী সহোদরা এই দুই বোন সম্পর্কে স্মৃতিচারণ করতে গিয়ে নীলিমা ইব্রাহিম লিখেছেন—‘শিক্ষিকা’ বলতে যে আদর্শ আমি আজও মনে মনে পালন করে চলেছি, তা এঁরা দু’বোন। ঝড়, জল, তুফানে এঁদের কখনো অনুপস্থিত দেখি নি অথবা অসুস্থ হয়েছেন এমনও শুনি নি। কখনো দামি শাড়ি পরতে দেখি নি কিন্তু কি সুন্দর পরিষ্কার ছিমছাম ছিলেন দু’জনে। শাড়ি কাধে ব্রোচ দিয়ে আটকানো, সামনে আঁচল, মাথার কাপড়ও পিন দিয়ে গাথা। ওঁদের আচ্ছাদনহীন মাথা কখনো দেখি নি, কার চুল কেমন ছিল বলতে পারব না। স্কুলের উপরের শ্রেণীতে পড়ার সময় নীলিমা রায় চৌধুরী সবচেয়ে বেশি প্রভাবিত হয়েছেন ইংরেজির শিক্ষক সুধাংশুভূষণ মুখোপাধ্যায় দ্বারা।"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "করোনেশন বালিকা বিদ্যালয় থেকে ১৯৩৫ সালে চারটি বিষয়ে লেটারসহ প্রথম বিভাগে প্রবেশিকা পরীক্ষায় উত্তীর্ণ হন নীলিমা রায় চৌধুরী। প্রবেশিকা পরীক্ষায় এত ভাল ফল করার জন্যে তার সম্মানার্থে ফল-প্রকাশের পরদিন স্কুল ছুটি দেওয়া হয়েছিল। এবার কলেজ জীবনের পালা। বাবা প্রফুল্লকুমার মেয়েকে ভর্তি করিয়ে দিলেন কলকাতার অভিজাত কলেজ ভিক্টোরিয়া ইনসটিটিউশন’-এ। কলেজের হোস্টেলেই তিনি থাকতেন। ভাল ও মেধাবী ছাত্রীদের প্রতিষ্ঠান ছিল ভিক্টোরিয়া ইনসটিটিউশন। দ্বিতীয় বা তৃতীয় বিভাগে পাস করা কেউ এ-প্রতিষ্ঠানে ভর্তি হতে পারত না। ভিক্টোরিয়া ইনসটিটিউশনের হোস্টেল জীবন সম্পর্কে নীলিমা ইব্রাহিম লিখেছেন—… আমি সাদরে সস্নেহে জায়গা পেলাম ভিক্টোরিয়াতে। বাবা হোস্টেলে রেখে গেলেন। আমার মনে হল আমি যেন জেলখানায় আছি। খাঁচায় বন্ধ পাখির মত আমার সে কি ছটফটানি। অথচ বাবা যাবার সময় বলে গেছেন, ‘পুথিগত বিদ্যা তোমার কি হবে জানি না তবে যে মহাপুরুষ ও মহিমাময়ী নারীর কাছে তোমাকে রেখে গেলাম, তাদের চরিত্রের কণামাত্র পেলেও আমি খুশি হব’। বাবা ড. বিধানচন্দ্র রায় ও লীলালতিকা ব্যানার্জীরই উল্লেখ করেছিলেন।’"
                      "\n \nভিক্টোরিয়া ইনসটিটিউশন থেকে নীলিমা রায়- চৌধুরী ১৯৩৭ সালে প্রথম বিভাগে আই এ পরীক্ষায় উত্তীর্ণ হন। অতঃপর একই কলেজে অর্থনীতি বিষয়ে স্নাতক সম্মান কোর্সে ভর্তি হন এবং ১৯৩৯ সনে অনার্সসহ দ্বিতীয় শ্রেণীতে স্নাতক পরীক্ষা পাস করেন। পরের বছর তিনি অর্থনীতি বিষয়ে কলিকাতা বিশ্ববিদ্যালয়ে এম. এ. ক্লাসে ভর্তি হন। কিন্তু মা কুসুমকুমারী দেবীর আকস্মিক অসুস্থতার কারণে তিনি এম. এ. পরীক্ষায় অবতীর্ণ হতে পারলেন না। এ সময় অনেকটা জেদের বশবর্তী হয়ে তিনি কলকাতার স্কটিশ চার্চ কলেজে বি. টি. ক্লাসে ভর্তি হন এবং ১৯৪২ সালে প্রথম শ্রেণীতে বি. টি. পরীক্ষা পাস করেন। এ বছরই তিনি কলিকাতা বিশ্ববিদ্যালয় থেকে ডিপ্লোমা ইন ব্রেইন পরীক্ষায় উত্তীর্ণ হন।"
                      "\n \n কলিকাতা বিশ্ববিদ্যালয় এবং স্কটিশ চার্জ কলেজে পড়ার সময় নীলিমা রায় চৌধুরী থাকতেন কলকাতার বিখ্যাত ডান্ডাস হোস্টেলে। উত্তর-জীবনে স্মৃতিচারণায় এই হোস্টেল সম্পর্কে তিনি লেখেন— “একটি আদর্শ হোস্টেল হিসেবে ডান্ডাস আমার চোখের সামনে ভাসে। পরবর্তী জীবনে ইংল্যান্ড, আমেরিকায় কলেজ-বিশ্ববিদ্যালয়ে যে-সব হোস্টেল দেখেছি ডান্ডাস কোনো অংশে তাদের চেয়ে নিম্নমানের নয়।’"
                      "\n \n নীলিমা রায় চৌধুরী এবার ঘনিষ্ঠ বান্ধবী তটিনীর প্রেরণায় বাংলায় এম. এ. পরীক্ষার প্রস্তুতি গ্রহণ করলেন। ছ’মাসের প্রস্তুতিতে পরীক্ষা দিয়ে ১৯৪৩ সালে কলিকাতা বিশ্ববিদ্যালয় থেকে বাংলায় প্রথম শ্রেণীতে এম. এ. পরীক্ষায় তিনি উত্তীর্ণ হন। ১৯৪৫ সালে তিনি মহিলাদের মধ্যে প্রথম বিহারীলাল মিত্র গবেষণা বৃত্তি লাভ করেন। নাটক নিয়ে গবেষণাকর্ম আরম্ভ করলেও ব্যক্তিগত জীবনে নানা জটিলতার কারণে তা তিনি শেষ করতে পারেন নি। ইতোমধ্যে ১৯৪৫ সালের ডিসেম্বর মাসে ইন্ডিয়ান আর্মি মেডিকেল কোরের ক্যাপ্টেন ঢাকার ডা. মোহাম্মদ ইব্রাহিমের সঙ্গে তাঁর বিয়ে হয়। ১৯৪৬ সালে স্বামীর সঙ্গে তিনি ঢাকা চলে আসেন।"
                      "\n \n ‘সামাজিক ও রাজনৈতিক পটভূমিকায় ঊনবিংশ শতাব্দীর বাংলা নাটক’ বিষয়ে গবেষণা করে নীলিমা ইব্রাহিম ১৯৫৯ সালে ঢাকা বিশ্ববিদ্যালয় থেকে পিএইচ. ডি. ডিগ্রি লাভ করেন। ১৯২১ সালে ঢাকা বিশ্ববিদ্যালয় প্রতিষ্ঠার পর থেকে বাংলায় তিনিই প্রথম এই গৌরব অর্জন করেন। ড. নীলিমা ইব্রাহিম ঢাকার আলিয়াস ফ্রাসেস থেকে ১৯৫৮ সালে ফরাসি ভাষায় প্রিলিমিনারি এবং ১৯৫৯ সালে ইন্টারমিডিয়েট ডিপ্লোমা পরীক্ষায় উত্তীর্ণ হন।"),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(50.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "সংসারজীবন",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                      "ইতঃপূর্বেই বলা হয়েছে, ইন্ডিয়ান আর্মি মেডিকেল কোরের ক্যাপ্টেন ডা. মোহাম্মদ ইব্রাহিমের সঙ্গে ১৯৪৫ সালে নীলিমা রায় চৌধুরী বিবাহ-বন্ধনে আবদ্ধ হন। অতঃপর তিনি নীলিমা ইব্রাহিম নামেই সমধিক পরিচিত হয়ে ওঠেন। মিষ্টভাষী কৌতুকপ্রিয় এবং আকর্ষণীয় ব্যক্তিত্বের অধিকারী ডা. ইব্রাহিমের সঙ্গে নীলিমা রায় চৌধুরীর প্রেম ও বিয়ের কথা তাঁর মুখ দিয়েই শোনা যাক— ১৯৪৫ সালের ডিসেম্বর মাস। সব চিন্তা-ভাবনার অবসান ঘটিয়ে আমরা পরস্পর পরিণয়-সূত্রে আবদ্ধ হলাম। এর সঙ্গে প্রাথমিক পরিচয়, আলাপ, প্রেম সবই ঘটেছিল আমাদের বাড়ির বসবার ঘরে। অনেক ইংরেজ, ফরাসি, অস্ট্রেলিয়ান, ক্যানাডিয়ানের সঙ্গে মিলিটারি ইউনিফর্ম পরে উনি আমাদের বাড়িতে আসেন। আমি তখন খুলনায় থাকতাম না। কালে ভদ্রে ছুটিতে আসতাম এবং আমাদের বাড়ির সর্বশেষ এর পরিচিত ব্যক্তি আমি। তবে পরবর্তীতে কলকাতায় ডায়মন্ড হারবার, দমদমের চৌহদ্দীতে খুবই ঘুরেছি। একবার উড়িষ্যায় আমার কাকার ওখানেও ঘুরে এলাম। সবাই দেখেছেন, জেনেছেন কিন্তু কেউ কোনো মন্তব্য করেন নি। সবাই ভেবেছিলেন অসম বিবাহের পরিণতি সম্পর্কে আমরা তো ওয়াকিবহাল। সুতরাং এমন কিছু করব না যা নিজেদের জন্য বিপজ্জনক বা সমাজের নিষ্পনীয় হতে পারে। কিন্তু যা হওয়া উচিত নয় তাই হল।… এ বিদ্রোহ, কেউ মানতে চাইলেন না। আমার বাবা আমার স্বামীকে প্রাণ ভরে আশীর্বাদ করলেন তিনি যেন সুখী হন, কারণ তিনি সত্যিই ভাল মানুষ কিন্তু আমার নিক থেকে মুখ ফিরিয়ে নিলেন বা নিতে বাধা হলেন।’"
                      "\n \n ডা. মোহাম্মদ ইব্রাহিমের পরিবার ছিল পুরোনো ঢাকার গেণ্ডারিয়ায় অতি বনেদি ও সম্ভ্রান্ত পরিবার। ১৯৪৬ সালে স্বামীর সঙ্গে ঢাকায় এসে নীলিমা ইব্রাহিম গেণ্ডারিয়ার বাসাতেই বসবাস করতেন। তখন ডা. ইব্রাহিমের কর্মস্থল ছিল তেজগাঁওস্থ। সি. এম এইচ-এ। প্রায় আট-ন’বছর নীলিমা ইব্রাহিম যৌথ পরিবারে বাস করেছেন। ঢাকা বিশ্ববিদ্যালয়ে শিক্ষক হিসেবে যোগদান করার পর তিনি বিশ্ববিদ্যালয় কোয়ার্টার্সে উঠে আসেন। তবে এর আগে তিনি ডা. ইব্রাহিমের ক্রয় করা নর্থ ব্রুক হল রোডের একটি বাড়িতে কয়েক বছর অতিবাহিত করেন।"
                      "\n \n ডা. মোহাম্মদ ইব্রাহিমের সঙ্গে বিবাহবন্ধনে আবদ্ধ হবার পর নীলিমা ইব্রাহিম মধুর দাম্পত্যজীবন উপভোগ করেছেন। খুবই ছিল তাদের দাম্পত্যজীবন। ডা. ইব্রাহিম প্রকৃত অর্থেই একজন পত্নীপ্রেমিক স্বামী। নীলিমা ইব্রাহিমের গৌরবময় কীর্তির পিছনে ডা. ইব্রাহিমের ত্যাগ, সহযোগিতা ও সহমর্মিতার কথা এখানে বিশেষভাবে উল্লেখযোগ্য। প্রসঙ্গত স্মরণীয় নীলিমা ইব্রাহিমের অভিমত—“ডা. ইব্রাহিম নাউ রানিং এইটটি টু। আমি অসুস্থ থাকি, সবকিছু তিনি করেন। তিনি এতকিছু দেখেন, যেটা কোনো সমাজ কোনো নারী স্বামীর কাছে আশা করতে পারেন না”। দীর্ঘ পঞ্চাশ বছরের দাম্পত্যজীবন শেষেও নীলিমা ইব্রাহিম আনন্দের সঙ্গে বলতে পারেন এইকথা সারাদিন সেও কাজ করে, আমিও কাজ করি, সন্ধ্যা বেলাটা খুব প্লেজর। ঐ সময়টায় কখনো টেলিভিশন দেখি, কখনও অতীত স্মৃতি রোমন্থন করি, কখনো দেশের পলিটিক্যাল সিচুয়েশন নিয়ে ডিসকাস করি, এটা ডা ইব্রাহিমের খুব আগ্রহের ব্যাপার। কটা যে কাগজ সে পড়ে, সে-ই জানে। খোদা চোখটা ভালো দিয়েছে, ৫/৬ টাতো কমপক্ষে প্রতিদিন পড়ে।’"
                      "\n \n নীলিমা ইব্রাহিম ছিলেন পাঁচ কন্যাসন্তানের জননী। এরা হচ্ছেন যথাক্রমে মঞ্জুরা, ডলি (প্রয়াত), পলি, বাবলী এবং ইতি। কন্যারা প্রত্যেকেই স্ব-স্ব ক্ষেত্রে বিশেষ কৃতিত্বের স্বাক্ষর রেখেছেন। এরমধ্যে অকাল প্রয়াত ডলি ইব্রাহিম (পরবর্তীতে ডলি আনোয়ার) অভিনয়-শিল্পী ও সাংবাদিক হিসেবে উজ্জ্বল প্রতিভার পরিচয় দিয়েছেন।"
                      "\n \n করোনেশন বালিকা বিদ্যালয়ে পড়ার সময় দু’জন শিক্ষিকা নীলিমা রায় চৌধুরীর উপর গভীর প্রভাব বিস্তার করেন। এরা হচ্ছেন সুলোচনা নাথ ও হেমাঙ্গনা নাথ। চিরকুমারী সহোদরা এই দুই বোন সম্পর্কে স্মৃতিচারণ করতে গিয়ে নীলিমা ইব্রাহিম লিখেছেন—‘শিক্ষিকা’ বলতে যে আদর্শ আমি আজও মনে মনে পালন করে চলেছি, তা এঁরা দু’বোন। ঝড়, জল, তুফানে এঁদের কখনো অনুপস্থিত দেখি নি অথবা অসুস্থ হয়েছেন এমনও শুনি নি। কখনো দামি শাড়ি পরতে দেখি নি কিন্তু কি সুন্দর পরিষ্কার ছিমছাম ছিলেন দু’জনে। শাড়ি কাধে ব্রোচ দিয়ে আটকানো, সামনে আঁচল, মাথার কাপড়ও পিন দিয়ে গাথা। ওঁদের আচ্ছাদনহীন মাথা কখনো দেখি নি, কার চুল কেমন ছিল বলতে পারব না। স্কুলের উপরের শ্রেণীতে পড়ার সময় নীলিমা রায় চৌধুরী সবচেয়ে বেশি প্রভাবিত হয়েছেন ইংরেজির শিক্ষক সুধাংশুভূষণ মুখোপাধ্যায় দ্বারা।"
                      "\n \n করোনেশন বালিকা বিদ্যালয় থেকে ১৯৩৫ সালে চারটি বিষয়ে লেটারসহ প্রথম বিভাগে প্রবেশিকা পরীক্ষায় উত্তীর্ণ হন নীলিমা রায় চৌধুরী। প্রবেশিকা পরীক্ষায় এত ভাল ফল করার জন্যে তার সম্মানার্থে ফল-প্রকাশের পরদিন স্কুল ছুটি দেওয়া হয়েছিল। এবার কলেজ জীবনের পালা। বাবা প্রফুল্লকুমার মেয়েকে ভর্তি করিয়ে দিলেন কলকাতার অভিজাত কলেজ ভিক্টোরিয়া ইনসটিটিউশন’-এ। কলেজের হোস্টেলেই তিনি থাকতেন। ভাল ও মেধাবী ছাত্রীদের প্রতিষ্ঠান ছিল ভিক্টোরিয়া ইনসটিটিউশন। দ্বিতীয় বা তৃতীয় বিভাগে পাস করা কেউ এ-প্রতিষ্ঠানে ভর্তি হতে পারত না। ভিক্টোরিয়া ইনসটিটিউশনের হোস্টেল জীবন সম্পর্কে নীলিমা ইব্রাহিম লিখেছেন—… আমি সাদরে সস্নেহে জায়গা পেলাম ভিক্টোরিয়াতে। বাবা হোস্টেলে রেখে গেলেন। আমার মনে হল আমি যেন জেলখানায় আছি। খাঁচায় বন্ধ পাখির মত আমার সে কি ছটফটানি। অথচ বাবা যাবার সময় বলে গেছেন, ‘পুথিগত বিদ্যা তোমার কি হবে জানি না তবে যে মহাপুরুষ ও মহিমাময়ী নারীর কাছে তোমাকে রেখে গেলাম, তাদের চরিত্রের কণামাত্র পেলেও আমি খুশি হব’। বাবা ড. বিধানচন্দ্র রায় ও লীলালতিকা ব্যানার্জীরই উল্লেখ করেছিলেন।’"
                      "\n \n ভিক্টোরিয়া ইনসটিটিউশন থেকে নীলিমা রায়- চৌধুরী ১৯৩৭ সালে প্রথম বিভাগে আই এ পরীক্ষায় উত্তীর্ণ হন। অতঃপর একই কলেজে অর্থনীতি বিষয়ে স্নাতক সম্মান কোর্সে ভর্তি হন এবং ১৯৩৯ সনে অনার্সসহ দ্বিতীয় শ্রেণীতে স্নাতক পরীক্ষা পাস করেন। পরের বছর তিনি অর্থনীতি বিষয়ে কলিকাতা বিশ্ববিদ্যালয়ে এম. এ. ক্লাসে ভর্তি হন। কিন্তু মা কুসুমকুমারী দেবীর আকস্মিক অসুস্থতার কারণে তিনি এম. এ. পরীক্ষায় অবতীর্ণ হতে পারলেন না। এ সময় অনেকটা জেদের বশবর্তী হয়ে তিনি কলকাতার স্কটিশ চার্চ কলেজে বি. টি. ক্লাসে ভর্তি হন এবং ১৯৪২ সালে প্রথম শ্রেণীতে বি. টি. পরীক্ষা পাস করেন। এ বছরই তিনি কলিকাতা বিশ্ববিদ্যালয় থেকে ডিপ্লোমা ইন ব্রেইন পরীক্ষায় উত্তীর্ণ হন।"
                      "\n \n কলিকাতা বিশ্ববিদ্যালয় এবং স্কটিশ চার্জ কলেজে পড়ার সময় নীলিমা রায় চৌধুরী থাকতেন কলকাতার বিখ্যাত ডান্ডাস হোস্টেলে। উত্তর-জীবনে স্মৃতিচারণায় এই হোস্টেল সম্পর্কে তিনি লেখেন— “একটি আদর্শ হোস্টেল হিসেবে ডান্ডাস আমার চোখের সামনে ভাসে। পরবর্তী জীবনে ইংল্যান্ড, আমেরিকায় কলেজ-বিশ্ববিদ্যালয়ে যে-সব হোস্টেল দেখেছি ডান্ডাস কোনো অংশে তাদের চেয়ে নিম্নমানের নয়।’"
                      "\n \n নীলিমা রায় চৌধুরী এবার ঘনিষ্ঠ বান্ধবী তটিনীর প্রেরণায় বাংলায় এম. এ. পরীক্ষার প্রস্তুতি গ্রহণ করলেন। ছ’মাসের প্রস্তুতিতে পরীক্ষা দিয়ে ১৯৪৩ সালে কলিকাতা বিশ্ববিদ্যালয় থেকে বাংলায় প্রথম শ্রেণীতে এম. এ. পরীক্ষায় তিনি উত্তীর্ণ হন। ১৯৪৫ সালে তিনি মহিলাদের মধ্যে প্রথম বিহারীলাল মিত্র গবেষণা বৃত্তি লাভ করেন। নাটক নিয়ে গবেষণাকর্ম আরম্ভ করলেও ব্যক্তিগত জীবনে নানা জটিলতার কারণে তা তিনি শেষ করতে পারেন নি। ইতোমধ্যে ১৯৪৫ সালের ডিসেম্বর মাসে ইন্ডিয়ান আর্মি মেডিকেল কোরের ক্যাপ্টেন ঢাকার ডা. মোহাম্মদ ইব্রাহিমের সঙ্গে তাঁর বিয়ে হয়। ১৯৪৬ সালে স্বামীর সঙ্গে তিনি ঢাকা চলে আসেন।"
                      "\n \n ‘সামাজিক ও রাজনৈতিক পটভূমিকায় ঊনবিংশ শতাব্দীর বাংলা নাটক’ বিষয়ে গবেষণা করে নীলিমা ইব্রাহিম ১৯৫৯ সালে ঢাকা বিশ্ববিদ্যালয় থেকে পিএইচ. ডি. ডিগ্রি লাভ করেন। ১৯২১ সালে ঢাকা বিশ্ববিদ্যালয় প্রতিষ্ঠার পর থেকে বাংলায় তিনিই প্রথম এই গৌরব অর্জন করেন। ড. নীলিমা ইব্রাহিম ঢাকার আলিয়াস ফ্রাসেস থেকে ১৯৫৮ সালে ফরাসি ভাষায় প্রিলিমিনারি এবং ১৯৫৯ সালে ইন্টারমিডিয়েট ডিপ্লোমা পরীক্ষায় উত্তীর্ণ হন।"),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(50.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "মৃত্যু",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                      "২০০২ সালের ১৮ই জুন, মঙ্গলবার, সন্ধ্যা ৬.৩০ মিনিটে ঢাকার মহাখালীস্থ মেট্রোপলিটন মেডিক্যাল সেন্টারে ৮১ বছর বয়সে বার্ধক্যজনিত কারণে হৃদযন্ত্রের ক্রিয়া বন্ধ হয়ে নীলিমা ইব্রাহিম মৃত্যুবরণ করেন। ২১শে জুন, শুক্রবার ঢাকা বিশ্ববিদ্যালয় মসজিদে নামাজে জানাজা শেষে অপরাহে মিরপুর বুদ্ধিজীবী গোরস্থানে তাঁকে কন্যা ডলি ইব্রাহিমের কবরের পাশে সমাধিস্থ করা হয়।"),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(50.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "শেষকথা",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                      "নীলিমা ইব্রাহিম বিশ্বাস করতেন মাটি বড় ঠাণ্ডা শীতল, ধরিত্রী সর্বংসহা।… মানুষের চেয়ে বড় দেবতায় আমি বিশ্বাস করি না, ঠিক তেমনি পৃথিবীর চেয়ে সুন্দরতর স্বর্গও আমার আকাঙ্ক্ষার বাইরে।” নীলিমা ইব্রাহিম সমগ্র জীবন ধরে এই মানুষ আর মৃত্তিকার মঙ্গল কামনা করেছেন, চেষ্টা করেছেন উভয়ের উৎকর্ষ সাধনের। তার জীবন ও সাধনার এটাই মৌল প্রত্যয়, পরম অভিজ্ঞান।"),
                ],
              ),
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
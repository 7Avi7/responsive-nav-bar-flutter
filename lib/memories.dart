import 'package:flutter/material.dart';
import 'package:ni/publish.dart';

import 'activities.dart';
import 'homePage.dart';
import 'lifeStoryPage.dart';

class Memories extends StatefulWidget {
  const Memories({super.key});

  @override
  State<Memories> createState() => _MemoriesState();
}

class _MemoriesState extends State<Memories> {
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Memories(),
                        ),
                      );
                    },
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
                  "স্মৃতিচারন      ",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Column(
              children: [
                Text(
                  "\n\nআমার নীলিমা আপা"
                  "\n\n   কলিম শরাফী",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(60.0),
              child: Column(
                children: [
                  Text(
                      "আজকে যে মহতী নারী সম্পর্কে কিছু বলতে ইচ্ছা করছে তিনি আমার নীলিমা আপা–ড. নীলিমা ইব্রাহিম। বিদগ্ধ শিক্ষাবিদ হিসেবে তিনি আমাদের প্রায় সকলের কাছেই সুপরিচিত। আমি তাকে একটু ভিন্ন ভাবে দেখার সুযোগ পেয়েছি। তাঁর সাথে আমার বয়সের যে ব্যবধান ছিল সে তৎপ্রেক্ষিতে আমাদের সম্পর্কটা যেমনটি হওয়ার কথা তেমন ছিল না। তিনি আমার সাথে অগ্রজার অধিকার নিয়ে কথা বলতেন। তাঁর যে দরদী মন ছিল তা শুধু আমাদের সমাজে অবহেলিত নারীর জন্যই নয়, তা ছিল সকলের জন্য। তিনি শিক্ষা বিস্তারে যেভাবে নিরলস নিয়োজিত থাকতেন তেমনি করেই সমাজের সার্বিক মঙ্গলের জন্য কাজ করেছেন। দেশের সকল সম্প্রদায়ের মানুষের সম্মিলিত প্রয়াসেই অগ্রগতি সম্ভব তিনি তা বিশ্বাস করতেন। আমি শুধু অবহেলিত, নির্যাতিত নারী সমাজের জন্য তাঁর যে দরদ ছিল সে কথাই উল্লেখ করব। ৭১-এর মহান মুক্তিযুদ্ধে আমাদের নারী সমাজের উপর পাকিস্তানি দখলদার বাহিনীর যে নিমর্ম নির্যাতন নেমে এসেছিল মুক্তিযুদ্ধের অনতিকাল পরে তাদের জন্য নীলিমা আপার মহৎ হৃদয় কেঁদে উঠেছিল। তিনি তাদের পাশে গিয়ে নাড়ান এবং তাদেরকে সাহসের সাথে সমাজে মাথা উঁচু করে পাঁড়াবার আহ্বান জানান। শুধু তাই নয় তিনি নির্যাতিত মা-বোনদের বীরাঙ্গনা হিসাবে আখ্যায়িত করেন। বঙ্গবন্ধুর সাথে তাঁর ঘনিষ্ঠ সম্পর্কের কারণে তিনি তাঁর প্রচেষ্টায় প্রভূত। সাফল্য লাভ করেন। নির্যাতিতা মা-বোনদের পুনবার্সনের জন্য তিনি বিভিন্ন পদক্ষেপ গ্রহণ করেন। শুধু লেখালেখির মাধ্যমেই নয় বাস্তব ক্ষেত্রে তাঁর ন্যায় বিদুষী নারীর ঐ উদাম প্রয়াস সমাজে নির্যাতিতা নারীদের জন্য অনুকল পরিবেশ সৃষ্টিতে যথেষ্ট সহায়ক হয়। আমি আজ কৃতজ্ঞতার সাথে এই মহিয়সী নারীর অবদান স্মরণ করি। এদেশের নারী জাগরণের অন্যতম পুরোধা নীলিমা ইব্রাহিম বেঁচে থাকবেন সকল অবহেলিত নির্যাতিত মা-বোন এবং আমাদের সকলের হৃদয়ে।"),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Column(
              children: [
                Text(
                  "\n\nনীলিমা ইব্রাহিম : 'বেগম'কে করেছেন সমৃদ্ধ"
                  "\n\n                   নূরজাহান বেগম",
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(60.0),
              child: Column(
                children: [
                  Text(
                      "১৯৫০ সালে আমরা ভারত থেকে এদেশে আসি।। বাবা জনাব নাসিরউদ্দিন সংস্কৃতিমনা একজন কাজী ব্যক্তিত্ব। ইতোমধ্যে নজরুল ইসলাম, আব্বাসউদ্দিন, জসীমউদ্দিন এর সঙ্গে হৃদাতা গভীর হয়েছে তার। কাজেই সাহিত্য ক্ষেত্রে তৎকালীন পূর্ব পাকিস্তানে একটা কিছু করা দরকার বিশেষ করে মহিলাদের জনা-এসব ভেবেই প্রকাশিত হ’ল ‘বেগম’ পত্রিকা। ১৯৫৪ সালে প্রতিষ্ঠিত হ’ল ‘বেগম ক্লাব’।"
                      "\nমূলত এই ক্লাবই তৎকালীন সময়ে শুধু মহিলাদের নয়, নারী-পুরুষ উভয়ের সাংস্কৃতিক চিন্তা- চেতনা-ধ্যান-ধারণার কেন্দ্রবিন্দুতে পরিণত হ’ল এবং সেখানেই আমি প্রথম ড. নীলিমা ইব্রাহিমের সংস্পর্শে আসি।"
                      "\nরাজিয়া বানু, হুসনা বানু খানম, লায়লা সামাদ কামরুন নাহার লাইলী-পুলু বিলকিস বানু এরা সবাই তখন ‘বেগম’ পরিবারভুক্ত। যুক্ত হলেন এদেরই একজন হয়ে নীলিমা আপা। আগেই উল্লেখ করেছি। এই ‘বেগম’ ক্লাব তখন শিক্ষিত সংস্কৃতিমনা মানুষের মিলন স্থান হয়ে উঠেছিল সেকারণেই প্রচুর অনুষ্ঠান, সংবর্ধনা ক্লাবের পক্ষ থেকে আয়োজন করতে হত। এবং সব কিছুর মূলেই থাকতেন নীলিমা আপা।"
                      "\nবাবা নাসিরউদ্দিনকে দেখেছি কিভাবে কি করতে হবে তা আপাকে বুঝিয়ে দিয়েছেন। ‘নীলিমা অনুষ্ঠানটি এভাবেই সাজাও’। আপা ঠিক ঠিক মত বাবার নির্দেশ মেনে নিজের মনের ও জ্ঞানের উৎকর্ষ দিয়ে চমৎকার সব অনুষ্ঠান নিজে নিজে সাজিয়ে পরিচালনা করতেন। বিশেষ করে নর্থব্রুক হল রোডের বাড়িটি বেগম ক্লাবের কাছাকাছি হওয়ায় আমার বাবা সবসময় তাঁকে কাছে পেয়েছেন। আরো একটি বিষয়ে লক্ষ্য করেছি। যখনই বিদেশী অতিথিকে সংবর্ধনা দেওয়া হ’ত তখন একমাত্র ড. নীলিমা ইব্রাহিম-ই পারতেন ইংরেজীতে সব কিছু পরিচালনা করতে। তখন তেমন অনেকেই ইংরেজী বলতে লিখতে পারদর্শী না হওয়ায় নীলিমা আপাই দারুণ দক্ষতায় বিদেশী অতিথিদের সঙ্গে কথোপকথন চালাতেন। বাবাও নিশ্চিত মনে আপার উপর সব দায়িত্বভার অর্পণ করতেন।"
                      "\nনীলিমা আপা ছিলেন একজন দৃঢ় চিত্ত কঠোর নীতি সম্পন্ন বিরল চরিত্রের একজন মহিলা। সবসময় খেয়াল করেছি তিনি যে সিদ্ধান্তটি নিতেন সেটাই বাস্তবায়ন করতেন। এমনও হয়েছে সাভার ভিন্ন মত উঠেছে কিন্তু তিনি তাঁর স্বভাবগত ভঙ্গীতে বলতেন “দেখো বিষয়টি তোমরা ঠিক বুঝতে পারছো না, এটি এমন হওয়া উচিত। কেন তা হওয়া উচিৎ তা বিশদভাবে ব্যাখ্যা করে শেষ পর্যস্ত তিনি তার মতের স্বপক্ষে সকলকে টেনে নিয়ে। আসতেন। অত্যন্ত বিচক্ষণ ও কৌশুলি হলেই এমনটা সম্ভব ব’লে আমার ধারণা।"
                      "\nশামসুন্নাহার মাহমুদ, সারা তৈফুর, মাহমুদা খাতুন সিদ্দিকা, সুফিয়া কামাল এঁরা এদেশের সম উন্নয়নে যে ভূমিকা রেখেছিলেন তা বলাই বাহুলা। কিন্তু নীলিমা ইব্রাহিম ছিলেন এঁদের থেকে একেবারে আলাদা। তিনি অনেককে পিছনে ফেলে অনেক দূর এগিয়ে গিয়েছিলেন তাঁর ব্যক্তিগত জ্ঞান ও প্রজ্ঞাকে সম্বল করুণ। অনেক বেশী আধুনিক ছিলেন তিনি, এটা আমাদের স্বীকার করতেই হবে। সত্যনিষ্ঠ, ন্যায়নিষ্ঠ এবং প্রখর বুদ্ধি সম্পন্ন নীলিমা ইব্রাহিম যেন একটি বিরাট বৃক্ষ, যার ছায়াতলে এদেশের শুধু মেয়েরা নয়- ছেলেরাও নিশ্চিত আশ্রয় লাভ করেছেন।"
                      "\nস্বাধীনতার পরও দেখেছি তিনি কি দক্ষতার সঙ্গে রোকেয়া হলের প্রাধ্যক্ষার দায়িত্বপালন করেছেন, এ পর্যন্ত বাংলাদেশের ইতিহাসে প্রথম মহিলা মহাপরিচালক হিসাবে বাংলা একাডেমীর সুনাম ও অক্ষুণ্ণ রেখেছেন। তবে এটাও ঠিক, বাংলাদেশের (তৎকালীন পূর্ব পাকিস্তান) বাংলা বিভাগের প্রথম মহিলা পি. এইচ. ডি. ডিগ্রীধারী নীলিমা ইব্রাহিমকে আমরা সংবর্ধনা দিই নি কখনো বেগম ক্লাবের পক্ষ থেকে। তবে বাবা অত্যন্ত উৎসাহের সঙ্গে তাঁকে “নাসিরউদ্দিন স্বর্ণ পদকে ভূষিত করেছিলেন স্বাধীনতার পর। আপাকে এ সম্মাননা প্রদান আমার বাবার পক্ষ থেকে পালিত একটি মহান কীর্তি বলে আমি মনে করি।"
                      "\nপঞ্চাশের শেষ কিংবা ষাট দশকের প্রথম দিকে। একটি স্মৃতি মনে পড়ছে। মাসুদা চৌধুরী (এখন আমেরিকা প্রবাসী) একদিন এসে জানালো ‘দেবদাস’ নাটকে সে অভিনয় করছে তবে ঐ সময়কার পোশাক-পরিচ্ছদ পাওয়া যাচ্ছে না। তিনি জানালেন, নীলিমা আপার কাছে তা পাওয়া যেতে পারে কারণ ওরকম ধরনের অভিজাতি শাড়ি তাঁকে তারা পরতে দেখেছে। আপা অত্যন্ত আন্তরিকতার সঙ্গে জানালেন কাপড় পাঠিয়ে দেবেন। পরবর্তীতে সেই শাড়িগুলো পরেই মাসুদা ‘দেবদাস’ নাটকে অভিনয় করেছিল। আপা ছিলেন এক আদর্শ। কথা বার্তায় কি চৌকস! এ দেশের স্বাধিনতা উত্তর নাট্য আন্দোলন তো অঙ্কুরেই শেষ হয়ে যেত, যদি না মহিলা সমিতির মঞ্চ পাওয়া যেত। যেমন লেখাপড়ায় উজ্জ্বল, তেমন সমাজ সেবার তাঁর অবদান। কি যুক্তি, কি প্রজ্ঞা। একই সঙ্গে নিজ মত প্রতিষ্ঠান, লাভ বলিষ্ঠ। এতগুণে গুণান্বিত একজন মহিলা কাজ করতে করতেই চলে গেলেন। অসুস্থ হয়ে বেঁচে থাকার চাইতে কর্মক্ষম অবস্থায় পৃথিবীকে বিদায় বলার মধ্যে বিজয়ী হবার গৌরব আছে অন্তত নীলিমা আপার জীবন দেখে আমার তাই মনে হয়। তবে এও মনে হয়, আপার মূল্যায়ন এখনো হয় নি। ঢাকা বিশ্ববিদ্যালয়ের ছাত্র/ছাত্রীদের হৃদয় জয় করা শিক্ষিকা কিংবা সমাজ সংস্কারক নীলিমা ইব্রাহিমকে এদেশ এখনো যথাযথ ভাবে পরিমাপ করতে পারেনি। আমাদের ইচ্ছে রয়েছে ‘বেগম ক্লাব এর ভূমিকা সম্পর্কিত গবেষণাকালে ড নীলিমা ইব্রাহিমের ভূমিকাও বস্তুনিষ্ঠভাবে তুলে ধরার। যে ক’জন মুষ্টিমেয় নারীর অবদান এদেশকে সমৃদ্ধ করেছে তাদের মধ্যে নীলিমা ইব্রাহিমের নাম অবশ্যই প্রথম সারিতে। ‘বেগম’ পত্রিকাকে তিনি লেখা দিয়ে সবসময় সমৃদ্ধ করেছেন। তার প্রথম উপন্যাস ‘পথ- শ্রান্ত ১৯৫৫ সালে ‘বেগম’ এ প্রকাশিত হয়। আমরা সবক্ষেত্রে তাঁর সাহায্য সহযোগিতা পেয়েছি বড় আন্তরিকভাবে। নীলিমা ইব্রাহিম শুধু একটি নাম নয়- আমার মতে তিনি একটি ‘প্রতিষ্ঠান।’ নিজেকে একটি প্রতিষ্ঠানে পরিণত করার জন্য যে দৃঢ় মানসিকতা, জ্ঞান ও বুদ্ধিমত্তার প্রয়োজন ড. নীলিমা ইব্রাহিম সে সব গুণকে নিজ যোগ্যতায় ধারণ করে তাঁর যথার্থ প্রয়োগে সক্ষম হয়ে ছিলেন। বাঙ্গালী নারী সমাজ চিরকাল এই ব্যক্তি মানুষটি তথা একটি চৌকস! এ দেশের স্বাধীনতা উত্তর নাটা আন্দোলন প্রতিষ্ঠানের কাছে চির ঋণী হয়ে থাকব।"),
                ],
              ),
            ),
            Column(
              children: [],
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
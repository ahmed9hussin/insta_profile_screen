import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_profile_page/constants.dart';
import '../highlights.dart';
import '../pff.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  List<Map<String, String>> listPosts = [
    {
      'image': 'assets/images/post-1.jpg',
    },
    {
      'image': 'assets/images/post-2.jpg',
    },
    {
      'image': 'assets/images/post-3.jpg',
    },
    {
      'image': 'assets/images/post-4.jpg',
    },
    {
      'image': 'assets/images/post-5.jpg',
    },
    {
      'image': 'assets/images/post-6.jpg',
    },
    {
      'image': 'assets/images/post-7.jpg',
    },
    {
      'image': 'assets/images/post-8.jpg',
    },
    {
      'image': 'assets/images/post-9.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 60,
              // appbar
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    const Text(
                      'mojon_12',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.w700),
                    ),
                    const Icon(Icons.keyboard_arrow_down_rounded),
                    const Spacer(),
                    SvgPicture.asset(
                      'assets/icons/add.svg',
                      height: 20,
                      width: 20,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SvgPicture.asset(
                      'assets/icons/menu.svg',
                      height: 35,
                      width: 30,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // avatar
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              'assets/images/avatar.jpg',
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          PFF(
                            text: '6',
                            label: 'Posts',
                          ),
                          PFF(
                            text: '1,566',
                            label: 'Followers',
                          ),
                          PFF(
                            text: '89',
                            label: 'Following',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    // bio
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        'Mo Jon Ka',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text('UOT | Korea'),
                    ),
                    const SizedBox(height: 15.0),
                    // edit profile
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  color: Colors.grey[200]),
                              child: const Center(
                                child: Text(
                                  'Edit profile',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(9),
                                  color: Colors.grey[200]),
                              child: const Center(
                                child: Text(
                                  'Share profile',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    // highlights
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          const Highlights(
                            highlightImage: 'assets/images/highlight-1.jpg',
                            highlightLabel: 'Memories',
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Highlights(
                            highlightImage: 'assets/images/highlight-2.jpg',
                            highlightLabel: 'Friends',
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          const Highlights(
                            highlightImage: 'assets/images/highlight-3.jpg',
                            highlightLabel: 'Sport',
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 68,
                                width: 68,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(84),
                                  border: Border.all(
                                      color: Colors.black, width: 0.7),
                                ),
                                child: const ClipOval(
                                  child: Icon(Icons.add),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'New',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                      height: 50,
                      // tap menu
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Spacer(),
                                SvgPicture.asset(
                                  'assets/icons/post.svg',
                                  height: 20,
                                  width: 20,
                                   color: Colors.black,
                                ),
                                const Spacer(),
                                const Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Spacer(),
                                SvgPicture.asset(
                                  'assets/icons/video.svg',
                                  height: 20,
                                  width: 20,
                                  //  color: Colors.black,
                                ),
                                Spacer(),
                                const Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Spacer(),
                                SvgPicture.asset(
                                  'assets/icons/tag.svg',
                                  height: 20,
                                  width: 20,
                                  //color: Colors.black,
                                ),
                                Spacer(),
                                const Divider(
                                  height: 1,
                                  thickness: 1,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    // grid posts
                    GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          childAspectRatio: 1 / 1,
                          crossAxisSpacing: 1,
                          mainAxisSpacing: 1,
                        ),
                        itemCount: listPosts.length,
                        itemBuilder: (context, index) {
                          final post = listPosts[index];
                          return Container(
                            color: hyperlinkColor,
                            child: Image.asset(
                              post['image']!,
                              fit: BoxFit.cover,
                            ),
                          );
                        }),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      // bottom bar
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {},
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              height: 22,
              width: 22,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              height: 22,
              width: 22,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/add.svg',
              height: 22,
              width: 22,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/instagram-reels.svg',
              height: 22,
              width: 22,
            ),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                border: Border.all(color: Colors.black),
              ),
              child: ClipOval(
                child: Image.asset('assets/images/avatar.jpg'),
              ),
            ),
            label: 'home',
          ),
        ],
      ),
    );
  }
}

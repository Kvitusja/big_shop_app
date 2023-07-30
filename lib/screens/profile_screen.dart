import 'package:flutter/material.dart';

import '../widgets/profile_header_label.dart';
import '../widgets/profile_screen_divider.dart';
import '../widgets/repeated_list_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Stack(
        children: [
          Container(
            height: 242,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [Colors.yellow, Colors.brown]),
            ),
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                centerTitle: true,
                pinned: true,
                elevation: 0,
                backgroundColor: Colors.white,
                expandedHeight: 140,
                flexibleSpace: LayoutBuilder(
                  builder: (context, constraints) {
                    return FlexibleSpaceBar(
                      title: AnimatedOpacity(
                        opacity: constraints.biggest.height <= 120 ? 1 : 0,
                        duration: const Duration(milliseconds: 200),
                        child: const Text(
                          'Account',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      background: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Colors.yellow, Colors.brown]),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 25.0, left: 30.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage:
                                    AssetImage('assets/inapp/guest.jpg'),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 25.0),
                                child: Text(
                                  'GUEST',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width * 0.25,
                              decoration: const BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                              ),
                              child: TextButton(
                                child: const Text(
                                  'Cart',
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 20),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: const BoxDecoration(
                                color: Colors.yellow,
                              ),
                              child: TextButton(
                                child: const Text(
                                  'Orders',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 20),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width * 0.25,
                              decoration: const BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                              child: TextButton(
                                child: const Text(
                                  'Wishlist',
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 20),
                                ),
                                onPressed: () {},
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    ColoredBox(
                      color: Colors.grey.shade300,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 150,
                            child: Image(
                              image: AssetImage('assets/inapp/logo.jpg'),
                            ),
                          ),
                          const ProfileHeaderLabel(
                            headerLabelText: 'Account Info.',
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 260,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16)),
                              child: const Column(
                                children: [
                                  RepeatedListTile(
                                      title: 'Email Address',
                                      subTitle: 'example@email.com',
                                      icon: Icon(Icons.email),
                                      onTap: null),
                                  ProfileScreenDivider(),
                                  RepeatedListTile(
                                      title: 'Phone No.',
                                      subTitle: '+1111111',
                                      icon: Icon(Icons.phone),
                                      onTap: null),
                                  ProfileScreenDivider(),
                                  RepeatedListTile(
                                      title: 'Address',
                                      subTitle: '140 st. - New Jersey',
                                      icon: Icon(Icons.location_on),
                                      onTap: null),
                                ],
                              ),
                            ),
                          ),
                          const ProfileHeaderLabel(
                              headerLabelText: 'Account Settings'),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 260,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                children: [
                                  RepeatedListTile(
                                    title: 'Edit Profile',
                                    icon: const Icon(Icons.edit),
                                    onTap: () {},
                                    subTitle: '',
                                  ),
                                  const ProfileScreenDivider(),
                                  RepeatedListTile(
                                    title: 'Change password',
                                    icon: const Icon(Icons.lock),
                                    onTap: () {},
                                    subTitle: '',
                                  ),
                                  const ProfileScreenDivider(),
                                  RepeatedListTile(
                                    title: 'Log Out',
                                    icon: const Icon(Icons.logout),
                                    onTap: () {
                                      Navigator.of(context).pushReplacementNamed('/');
                                    },
                                    subTitle: '',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

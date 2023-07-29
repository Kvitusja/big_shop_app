import 'package:flutter/material.dart';

import '../widgets/social_media_widget.dart';
import '../widgets/welcome_logo_animation.dart';
import '../widgets/welcome_screen_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/inapp/bgimage.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'WELCOME',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              const SizedBox(
                height: 120,
                width: 200,
                child: Image(
                  image: AssetImage('assets/inapp/logo.jpg'),
                ),
              ),
              const Text(
                'SHOP',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.35),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(24),
                      bottomLeft: Radius.circular(24),
                    ),
                  ),
                  child: const Center(
                      child: Text(
                    'Suppliers only',
                    style: TextStyle(
                        color: Colors.yellowAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                    height: 56,
                    width: MediaQuery.of(context).size.width * 0.75,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.35),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AnimatedContainer(duration: Duration()),
                        WelcomeScreenButton(
                          text: 'Log In',
                          function: () {},
                        ),
                        WelcomeScreenButton(
                          text: 'Sign Up',
                          function: () {},
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                height: 150,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 56,
                  width: MediaQuery.of(context).size.width * 0.75,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.35),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      WelcomeScreenButton(
                        text: 'Log In',
                        function: () {},
                      ),
                      WelcomeScreenButton(
                        text: 'Sign Up',
                        function: () {},
                      ),
                      const WelcomeLogoAnimation(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                color: Colors.white38,
                child: const Padding(
                  padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SocialMediaWidget(
                        text: 'Google',
                        assetName: 'assets/inapp/google.jpg',
                      ),
                      SocialMediaWidget(
                        text: 'Facebook',
                        assetName: 'assets/inapp/facebook.jpg',
                      ),
                      SocialMediaWidget(
                        text: 'Guest',
                        assetName: 'assets/inapp/guest.jpg',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

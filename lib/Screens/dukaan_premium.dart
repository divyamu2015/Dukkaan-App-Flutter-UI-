import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PremiumScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  color: Colors.blue,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          'Dukaan Premium',
                          style: TextStyle(color: Colors.white, fontSize: 23),
                        ),
                        const SizedBox()
                      ],
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment(0, 0.5),
                  child: SizedBox(
                    width: 500,
                    height: 250,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage(
                                  'lib/assets/Screenshot 2023-07-25 143239.png'),
                              width: 180,
                              height: 100,
                            ),
                            Text(
                              'Get Dukaan Premium for just',
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              '\u{20B9}4,999/year',
                              style: TextStyle(fontSize: 25),
                            ),
                            Text(
                              'All the advanced features for scaling your',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Features',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          border: Border.all(color: Colors.blue, width: 2)),
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(2),
                      child: const Icon(
                        Icons.change_circle_outlined,
                        color: Colors.blue,
                      ),
                    ),
                    title: const Text(
                      'Custom domain name',
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: const Text(
                        'Get your own custom domain name and build your brand on the internet'),
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          border: Border.all(color: Colors.blue, width: 2)),
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(2),
                      child: const Icon(
                        Icons.check_circle_outline_outlined,
                        color: Colors.blue,
                      ),
                    ),
                    title: const Text(
                      'Verified seller badge',
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: const Text(
                        'Get green verified badge under your store name and build trust'),
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          border: Border.all(color: Colors.blue, width: 2)),
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(2),
                      child: const Icon(
                        Icons.computer_sharp,
                        color: Colors.blue,
                      ),
                    ),
                    title: const Text(
                      'Dukaan for PC',
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: const Text(
                        'Access all the exclusive premium features on Dukaan for PC'),
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          border: Border.all(color: Colors.blue, width: 2)),
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(2),
                      child: const Icon(
                        Icons.headset_mic_outlined,
                        color: Colors.blue,
                      ),
                    ),
                    title: const Text(
                      'Priority Support',
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: const Text(
                        'Get your questions resolved with our priority customer support'),
                  ),
                  const Divider(
                    height: 15,
                    thickness: 3,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'What is Ducaan Premium?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const YoutubeVideoPlayer(),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(
                    height: 15,
                    thickness: 3,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Frequently  asked questions',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const ListTile(
                    title: Text(
                      'What type of businesses can use Dukaan Premium?',
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.minimize_outlined,
                      color: Colors.grey,
                    ),
                  ),
                  const Text(
                    'Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand-anyone who wants to sell their products/services online - Dukaan is the perfect platform for you.',
                    style: TextStyle(color: Colors.black54),
                  ),
                  const Divider(),
                  const ListTile(
                    title: Text(
                      'What is your refund policy?',
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.add,
                      color: Colors.grey,
                    ),
                  ),
                  const Divider(),
                  const ListTile(
                    title: Text(
                      'Will there be an automatic charges after the paid trail?',
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.add,
                      color: Colors.grey,
                    ),
                  ),
                  const Divider(),
                  const ListTile(
                    title: Text(
                      'What payment methods do you offer?',
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.add,
                      color: Colors.grey,
                    ),
                  ),
                  const Divider(),
                  const ListTile(
                    title: Text(
                      'What happens when my free trail ends?',
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.add,
                      color: Colors.grey,
                    ),
                  ),
                  const Divider(),
                  const ListTile(
                    title: Text(
                      'What are the terms for the custom domain?',
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.add,
                      color: Colors.grey,
                    ),
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 25,
                  ),
                  const Divider(
                    height: 15,
                    thickness: 3,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    'Need help?Get in touch',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: SizedBox(
                              height: 80,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.chat_bubble_outline_outlined,
                                    size: 50,
                                    color: Colors.black54,
                                  ),
                                  Text(
                                    'Live Chat',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black54),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        flex: 1,
                      ),
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: SizedBox(
                              height: 80,
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.phone_outlined,
                                    size: 50,
                                    color: Colors.black54,
                                  ),
                                  Text(
                                    'Phone Call',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black54),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        flex: 1,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          onPressed: () {},
                          child: const Text(
                            'Select Domain',
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Get premium',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class YoutubeVideoPlayer extends StatefulWidget {
  const YoutubeVideoPlayer({super.key});

  @override
  State<YoutubeVideoPlayer> createState() => _YoutubeVideoPlayerState();
}

class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {
  late YoutubePlayerController controller;
  final videoURL = "https://youtu.be/id1E0lqnUtY";

  @override
  void initState() {
    final videoID = YoutubePlayer.convertUrlToId(videoURL);
    controller = YoutubePlayerController(
      initialVideoId: videoID!,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        loop: false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: YoutubePlayer(controller: controller),
    );
  }
}

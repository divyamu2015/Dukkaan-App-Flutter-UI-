import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AdditionalInfoScreen extends StatefulWidget {
  AdditionalInfoScreen({super.key});

  @override
  State<AdditionalInfoScreen> createState() => _AdditionalInfoScreenState();
}

class _AdditionalInfoScreenState extends State<AdditionalInfoScreen> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Additional Information')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(Icons.share_outlined),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Share Dukaan App',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    width: 128,
                  ),
                  Icon(Icons.keyboard_arrow_right_outlined)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Icon(Icons.chat_bubble_outline),
                  SizedBox(width: 20),
                  Text(
                    'Change Language',
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    width: 128,
                  ),
                  Icon(Icons.keyboard_arrow_right_outlined)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Icon(Icons.call_outlined),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    'Whatsapp Chat Support',
                    style: TextStyle(fontSize: 17),
                  ),
                  const SizedBox(
                    width: 59,
                  ),
                  Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      })
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Icon(Icons.lock_outline),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(fontSize: 17),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Icon(Icons.star_border_outlined),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Rate Us',
                    style: TextStyle(fontSize: 17),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Icon(Icons.exit_to_app_outlined),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Sign Out',
                    style: TextStyle(fontSize: 17),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

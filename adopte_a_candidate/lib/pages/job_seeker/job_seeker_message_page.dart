import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:adopte_a_candidate/widgets/logo/logo.dart';
import 'package:adopte_a_candidate/models/messages.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class JobSeekerMessagePage extends StatefulWidget {
  const JobSeekerMessagePage({Key? key}) : super(key: key);

  @override
  _JobSeekerMessagePageState createState() => _JobSeekerMessagePageState();
}

class _JobSeekerMessagePageState extends State<JobSeekerMessagePage> {
  TextEditingController messageText = TextEditingController();
  List<Message> messages = [
    Message(
      message:
      'Hello your profile is interesting are you available for a meeting?',
      isYou: true,
    ),
    Message(
      message: 'Yes of course, when would you like to meet?',
      isYou: false,
    ),
    Message(
      message: 'Are you available tomorrow at 10am?',
      isYou: true,
    ),
    Message(
      message: 'Yes, I am available tomorrow at 10am',
      isYou: false,
    ),
    Message(
      message: 'Nice come at 10am at 10 rue de la paix, 75000 Paris',
      isYou: true,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Logo(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () async {
                  context.goNamed('job_seeker_message');
                },
                icon: const Icon(Icons.arrow_back_ios_new),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    border: Border.all(
                        color: const Color(0xffffd5c2),
                        style: BorderStyle.solid,
                        width: 2.0),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      'Company #9011',
                      style: GoogleFonts.josefinSans(
                        textStyle: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.business_center_rounded,
                  color: Color(0xFFFFD5C2),
                  size: 50,
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F5F5),
                  border: Border.all(
                      color: const Color(0xffffd5c2),
                      style: BorderStyle.solid,
                      width: 2.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: messages[index].isYou
                                ? MainAxisAlignment.end
                                : MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: const Color(0xffffd5c2),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth:
                                    MediaQuery.of(context).size.width * 0.6,
                                  ),
                                  child: AutoSizeText(
                                    messages[index].message,
                                    style: GoogleFonts.josefinSans(
                                      textStyle: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              border: Border.all(
                  color: const Color(0xffffd5c2),
                  style: BorderStyle.solid,
                  width: 2.0),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: messageText,
                    decoration: const InputDecoration(
                      hintText: 'Type a message',
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      messages.add(Message(
                        message: messageText.text,
                        isYou: true,
                      ));
                      messageText.clear();
                    });
                  },
                  icon: const Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {

  final String userName;

  final String userImage;

  const MessageScreen({

    super.key,

    required this.userName,

    required this.userImage,
  });

  @override
  State<MessageScreen> createState() =>
      _MessageScreenState();
}

class _MessageScreenState
    extends State<MessageScreen> {

  final TextEditingController
  controller =
  TextEditingController();

  late List<Map<String, dynamic>>
  messages;

  @override
  void initState() {

    super.initState();

    messages = [

      {
        "isMe": false,

        "text":
        "Hi! Thanks for your interest in my trip 😊",
      },

      {
        "isMe": true,

        "text":
        "Hey! I'm interested in joining your trip ✈",
      },
    ];
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:
      const Color(0xFFF4F7F8),

      appBar: AppBar(

        backgroundColor: Colors.white,

        elevation: 0,

        leading: IconButton(

          onPressed: () {

            Navigator.pop(context);
          },

          icon: const Icon(

            Icons.arrow_back,

            color: Colors.black,
          ),
        ),

        title: Row(

          children: [

            CircleAvatar(

              radius: 22,

              backgroundImage:
              NetworkImage(
                widget.userImage,
              ),
            ),

            const SizedBox(width: 12),

            Column(

              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                Text(

                  widget.userName,

                  style: const TextStyle(

                    color: Colors.black,

                    fontSize: 18,

                    fontWeight:
                    FontWeight.bold,
                  ),
                ),

                Text(

                  "Online",

                  style: TextStyle(

                    color: Colors.green[700],

                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ],
        ),

        actions: [

          IconButton(

            onPressed: () {},

            icon: const Icon(

              Icons.call,

              color: Colors.black,
            ),
          ),

          IconButton(

            onPressed: () {},

            icon: const Icon(

              Icons.more_vert,

              color: Colors.black,
            ),
          ),
        ],
      ),

      body: Column(

        children: [

          // TRIP REQUEST INFO

          Container(

            margin: const EdgeInsets.all(18),

            padding: const EdgeInsets.all(18),

            decoration: BoxDecoration(

              color: Colors.white,

              borderRadius:
              BorderRadius.circular(
                24,
              ),
            ),

            child: Row(

              children: [

                ClipRRect(

                  borderRadius:
                  BorderRadius.circular(
                    18,
                  ),

                  child: Image.network(

                    'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',

                    width: 90,
                    height: 90,

                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(

                  child: Column(

                    crossAxisAlignment:
                    CrossAxisAlignment
                        .start,

                    children: const [

                      Text(

                        "Trip Join Request",

                        style: TextStyle(

                          fontSize: 22,

                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        "You requested to join this trip ✈",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // CHAT AREA

          Expanded(

            child: ListView.builder(

              padding:
              const EdgeInsets.symmetric(
                horizontal: 20,
              ),

              itemCount:
              messages.length,

              itemBuilder:
                  (context, index) {

                final msg =
                messages[index];

                bool isMe =
                msg["isMe"];

                return Align(

                  alignment: isMe
                      ? Alignment.centerRight
                      : Alignment.centerLeft,

                  child: Container(

                    margin:
                    const EdgeInsets.only(
                      bottom: 15,
                    ),

                    padding:
                    const EdgeInsets.all(
                      16,
                    ),

                    constraints:
                    const BoxConstraints(
                      maxWidth: 300,
                    ),

                    decoration: BoxDecoration(

                      color: isMe
                          ? const Color(
                          0xFF2563EB)
                          : Colors.white,

                      borderRadius:
                      BorderRadius.circular(
                        22,
                      ),
                    ),

                    child: Text(

                      msg["text"],

                      style: TextStyle(

                        color: isMe
                            ? Colors.white
                            : Colors.black,

                        fontSize: 16,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // INPUT AREA

          Container(

            padding: const EdgeInsets.all(15),

            decoration: const BoxDecoration(

              color: Colors.white,

              borderRadius:
              BorderRadius.only(

                topLeft:
                Radius.circular(28),

                topRight:
                Radius.circular(28),
              ),
            ),

            child: Row(

              children: [

                IconButton(

                  onPressed: () {},

                  icon: const Icon(

                    Icons.add_circle_outline,

                    size: 30,
                  ),
                ),

                Expanded(

                  child: TextField(

                    controller:
                    controller,

                    decoration: InputDecoration(

                      hintText:
                      "Type message...",

                      filled: true,

                      fillColor:
                      const Color(
                        0xFFF4F7F8,
                      ),

                      border:
                      OutlineInputBorder(

                        borderRadius:
                        BorderRadius.circular(
                          20,
                        ),

                        borderSide:
                        BorderSide.none,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                CircleAvatar(

                  radius: 28,

                  backgroundColor:
                  const Color(0xFF2563EB),

                  child: IconButton(

                    onPressed: () {

                      if (controller
                          .text
                          .isNotEmpty) {

                        setState(() {

                          messages.add({

                            "isMe": true,

                            "text":
                            controller.text,
                          });
                        });

                        controller.clear();
                      }
                    },

                    icon: const Icon(

                      Icons.send,

                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
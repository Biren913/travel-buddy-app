import 'package:flutter/material.dart';

import 'message_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:
      const Color(0xFFF4F7F8),

      appBar: AppBar(

        backgroundColor: Colors.white,

        elevation: 0,

        title: const Text(

          "Messages",

          style: TextStyle(

            color: Colors.black,

            fontSize: 28,

            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [

          IconButton(

            onPressed: () {},

            icon: const Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: Column(

        children: [

          // SEARCH BAR

          Padding(

            padding: const EdgeInsets.all(20),

            child: TextField(

              decoration: InputDecoration(

                hintText:
                "Search conversations",

                prefixIcon:
                const Icon(Icons.search),

                filled: true,

                fillColor: Colors.white,

                border: OutlineInputBorder(

                  borderRadius:
                  BorderRadius.circular(20),

                  borderSide:
                  BorderSide.none,
                ),
              ),
            ),
          ),

          // ACTIVE USERS

          SizedBox(

            height: 100,

            child: ListView(

              scrollDirection:
              Axis.horizontal,

              padding:
              const EdgeInsets.symmetric(
                horizontal: 20,
              ),

              children: [

                activeUser(
                  "Sarah",
                  "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
                ),

                activeUser(
                  "Mike",
                  "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d",
                ),

                activeUser(
                  "Emma",
                  "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
                ),

                activeUser(
                  "Alex",
                  "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
                ),
              ],
            ),
          ),

          const SizedBox(height: 15),

          // CHAT LIST

          Expanded(

            child: ListView(

              children: [

                chatTile(

                  context,

                  name: "Sarah Johnson",

                  message:
                  "Bali trip sounds exciting 🌴",

                  time: "2 min",

                  image:
                  "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
                ),

                chatTile(

                  context,

                  name: "Mike Travel",

                  message:
                  "Let's discuss Tokyo plans ✈",

                  time: "10 min",

                  image:
                  "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d",
                ),

                chatTile(

                  context,

                  name: "Emma Wilson",

                  message:
                  "Can I join your Paris trip?",

                  time: "25 min",

                  image:
                  "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ACTIVE USER

  Widget activeUser(
      String name,
      String image,
      ) {

    return Padding(

      padding:
      const EdgeInsets.only(right: 18),

      child: Column(

        children: [

          Stack(

            children: [

              CircleAvatar(

                radius: 30,

                backgroundImage:
                NetworkImage(image),
              ),

              Positioned(

                bottom: 0,
                right: 0,

                child: Container(

                  width: 14,
                  height: 14,

                  decoration: BoxDecoration(

                    color: Colors.green,

                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),

                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          Text(name),
        ],
      ),
    );
  }

  // CHAT TILE

  Widget chatTile(

      BuildContext context, {

        required String name,

        required String message,

        required String time,

        required String image,
      }) {

    return ListTile(

      contentPadding:
      const EdgeInsets.symmetric(

        horizontal: 20,
        vertical: 10,
      ),

      leading: CircleAvatar(

        radius: 30,

        backgroundImage:
        NetworkImage(image),
      ),

      title: Text(

        name,

        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),

      subtitle: Text(message),

      trailing: Text(time),

      onTap: () {

        Navigator.push(

          context,

          MaterialPageRoute(

            builder: (context) =>
                MessageScreen(

                  userName: name,

                  userImage: image,
                ),
          ),
        );
      },
    );
  }
}
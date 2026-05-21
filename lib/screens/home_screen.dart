import 'package:flutter/material.dart';

import '../trip_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() =>
      _HomeScreenState();
}

class _HomeScreenState
    extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:
      const Color(0xFFF4F7F8),

      body: SafeArea(

        child: ListView(

          physics:
          const BouncingScrollPhysics(),

          children: [

            // HEADER

            Padding(

              padding: const EdgeInsets.all(20),

              child: Row(

                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,

                children: [

                  Column(

                    crossAxisAlignment:
                    CrossAxisAlignment.start,

                    children: [

                      const Text(

                        "Travel Buddy",

                        style: TextStyle(

                          fontSize: 32,

                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 5),

                      Text(

                        "Explore the world together ✈",

                        style: TextStyle(

                          color: Colors.grey[700],

                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),

                  const CircleAvatar(

                    radius: 28,

                    backgroundImage:
                    NetworkImage(
                      'https://images.unsplash.com/photo-1500648767791-00dcc994a43e',
                    ),
                  ),
                ],
              ),
            ),

            // SEARCH BAR

            Padding(

              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),

              child: TextField(

                decoration: InputDecoration(

                  hintText:
                  "Search destinations",

                  prefixIcon:
                  const Icon(Icons.search),

                  filled: true,

                  fillColor: Colors.white,

                  border: OutlineInputBorder(

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

            const SizedBox(height: 25),

            // STORIES SECTION

            SizedBox(

              height: 110,

              child: ListView(

                scrollDirection:
                Axis.horizontal,

                padding:
                const EdgeInsets.symmetric(
                  horizontal: 20,
                ),

                children: [

                  storyBubble(
                    "Sarah",
                    "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
                  ),

                  storyBubble(
                    "Mike",
                    "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d",
                  ),

                  storyBubble(
                    "Emma",
                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330",
                  ),

                  storyBubble(
                    "Alex",
                    "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // NEWS FEED POSTS

            ...trips.map((trip) {

              return Container(

                margin: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 30,
                ),

                decoration: BoxDecoration(

                  color: Colors.white,

                  borderRadius:
                  BorderRadius.circular(
                    28,
                  ),

                  boxShadow: [

                    BoxShadow(

                      color:
                      Colors.grey.withOpacity(
                        0.1,
                      ),

                      blurRadius: 12,
                    ),
                  ],
                ),

                child: Column(

                  crossAxisAlignment:
                  CrossAxisAlignment.start,

                  children: [

                    // USER HEADER

                    Padding(

                      padding:
                      const EdgeInsets.all(
                        18,
                      ),

                      child: Row(

                        children: [

                          const CircleAvatar(

                            radius: 24,

                            backgroundImage:
                            NetworkImage(
                              'https://images.unsplash.com/photo-1500648767791-00dcc994a43e',
                            ),
                          ),

                          const SizedBox(
                              width: 12),

                          Expanded(

                            child: Column(

                              crossAxisAlignment:
                              CrossAxisAlignment
                                  .start,

                              children: [

                                Text(

                                  trip["user"],

                                  style:
                                  const TextStyle(

                                    fontWeight:
                                    FontWeight
                                        .bold,

                                    fontSize: 18,
                                  ),
                                ),

                                const SizedBox(
                                    height: 4),

                                Text(

                                  trip["location"],

                                  style: TextStyle(

                                    color: Colors
                                        .grey[700],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          IconButton(

                            onPressed: () {},

                            icon: const Icon(
                              Icons.more_horiz,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // IMAGE

                    ClipRRect(

                      borderRadius:
                      BorderRadius.circular(
                        20,
                      ),

                      child: Image.network(

                        trip["image"],

                        height: 260,

                        width: double.infinity,

                        fit: BoxFit.cover,

                        errorBuilder:

                            (context,
                            error,
                            stackTrace) {

                          return Container(

                            height: 260,

                            color:
                            Colors.grey[300],

                            child: const Center(

                              child: Icon(
                                Icons.image,
                                size: 60,
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    Padding(

                      padding:
                      const EdgeInsets.all(
                        20,
                      ),

                      child: Column(

                        crossAxisAlignment:
                        CrossAxisAlignment
                            .start,

                        children: [

                          // ACTIONS

                          Row(

                            children: [

                              IconButton(

                                onPressed: () {},

                                icon: const Icon(
                                  Icons.favorite_border,
                                ),
                              ),

                              IconButton(

                                onPressed: () {},

                                icon: const Icon(
                                  Icons.comment_outlined,
                                ),
                              ),

                              IconButton(

                                onPressed: () {},

                                icon: const Icon(
                                  Icons.send_outlined,
                                ),
                              ),

                              const Spacer(),

                              IconButton(

                                onPressed: () {},

                                icon: const Icon(
                                  Icons.bookmark_border,
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(
                              height: 10),

                          // TITLE

                          Text(

                            trip["title"],

                            style:
                            const TextStyle(

                              fontSize: 24,

                              fontWeight:
                              FontWeight.bold,
                            ),
                          ),

                          const SizedBox(
                              height: 10),

                          Text(
                            trip["description"],
                          ),

                          const SizedBox(
                              height: 15),

                          Row(

                            children: [

                              const Icon(
                                Icons.calendar_month,
                                size: 18,
                              ),

                              const SizedBox(
                                  width: 5),

                              Text(
                                trip["dates"],
                              ),
                            ],
                          ),

                          const SizedBox(
                              height: 8),

                          Row(

                            children: [

                              const Icon(
                                Icons.attach_money,
                                size: 18,
                              ),

                              const SizedBox(
                                  width: 5),

                              Text(
                                trip["budget"],
                              ),
                            ],
                          ),

                          const SizedBox(
                              height: 25),

                          // REQUEST BUTTON

                          SizedBox(

                            width:
                            double.infinity,

                            height: 55,

                            child:
                            ElevatedButton(

                              onPressed: () {

                                Navigator
                                    .pushNamed(
                                  context,
                                  '/chat',
                                );
                              },

                              style:
                              ElevatedButton
                                  .styleFrom(

                                backgroundColor:
                                const Color(
                                  0xFF2563EB,
                                ),

                                shape:
                                RoundedRectangleBorder(

                                  borderRadius:
                                  BorderRadius
                                      .circular(
                                    18,
                                  ),
                                ),
                              ),

                              child:
                              const Text(

                                "Request to Join",

                                style:
                                TextStyle(

                                  color:
                                  Colors.white,

                                  fontSize: 17,

                                  fontWeight:
                                  FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }

  // STORY BUBBLE

  Widget storyBubble(
      String name,
      String image,
      ) {

    return Padding(

      padding:
      const EdgeInsets.only(right: 18),

      child: Column(

        children: [

          Container(

            padding:
            const EdgeInsets.all(3),

            decoration: BoxDecoration(

              shape: BoxShape.circle,

              gradient:
              const LinearGradient(

                colors: [
                  Colors.orange,
                  Colors.pink,
                ],
              ),
            ),

            child: CircleAvatar(

              radius: 33,

              backgroundImage:
              NetworkImage(image),
            ),
          ),

          const SizedBox(height: 8),

          Text(name),
        ],
      ),
    );
  }
}
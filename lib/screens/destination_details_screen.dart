import 'package:flutter/material.dart';

import 'message_screen.dart';

class DestinationDetailsScreen
    extends StatelessWidget {

  final String title;

  final String country;

  final String image;

  const DestinationDetailsScreen({

    super.key,

    required this.title,

    required this.country,

    required this.image,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:
      const Color(0xFFF4F7F8),

      body: SingleChildScrollView(

        physics:
        const BouncingScrollPhysics(),

        child: Column(

          crossAxisAlignment:
          CrossAxisAlignment.start,

          children: [

            // HERO IMAGE

            Stack(

              children: [

                ClipRRect(

                  borderRadius:
                  const BorderRadius.only(

                    bottomLeft:
                    Radius.circular(35),

                    bottomRight:
                    Radius.circular(35),
                  ),

                  child: Image.network(

                    image,

                    height: 360,

                    width: double.infinity,

                    fit: BoxFit.cover,
                  ),
                ),

                Container(

                  height: 360,

                  decoration: BoxDecoration(

                    borderRadius:
                    const BorderRadius.only(

                      bottomLeft:
                      Radius.circular(
                        35,
                      ),

                      bottomRight:
                      Radius.circular(
                        35,
                      ),
                    ),

                    gradient: LinearGradient(

                      begin:
                      Alignment.topCenter,

                      end:
                      Alignment.bottomCenter,

                      colors: [

                        Colors.black
                            .withOpacity(0.2),

                        Colors.black
                            .withOpacity(0.7),
                      ],
                    ),
                  ),
                ),

                Positioned(

                  top: 50,
                  left: 20,

                  child: CircleAvatar(

                    backgroundColor:
                    Colors.white,

                    child: IconButton(

                      onPressed: () {

                        Navigator.pop(
                            context);
                      },

                      icon: const Icon(

                        Icons.arrow_back,

                        color: Colors.black,
                      ),
                    ),
                  ),
                ),

                Positioned(

                  bottom: 40,
                  left: 25,

                  child: Column(

                    crossAxisAlignment:
                    CrossAxisAlignment
                        .start,

                    children: [

                      Text(

                        title,

                        style: const TextStyle(

                          color: Colors.white,

                          fontSize: 38,

                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 10),

                      Row(

                        children: [

                          const Icon(

                            Icons.location_on,

                            color:
                            Colors.white,
                          ),

                          const SizedBox(width: 5),

                          Text(

                            country,

                            style:
                            const TextStyle(

                              color:
                              Colors.white70,

                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // ABOUT SECTION

            sectionTitle("About Destination"),

            const Padding(

              padding:
              EdgeInsets.symmetric(
                horizontal: 20,
              ),

              child: Text(

                "Experience breathtaking views, amazing culture, nightlife, delicious food and unforgettable adventures with travelers from around the world.",

                style: TextStyle(

                  fontSize: 16,

                  height: 1.6,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // QUICK INFO

            Padding(

              padding:
              const EdgeInsets.symmetric(
                horizontal: 20,
              ),

              child: Row(

                mainAxisAlignment:
                MainAxisAlignment
                    .spaceBetween,

                children: [

                  infoCard(
                    Icons.attach_money,
                    "Budget",
                    "\$1500",
                  ),

                  infoCard(
                    Icons.calendar_month,
                    "Best Season",
                    "Summer",
                  ),

                  infoCard(
                    Icons.people,
                    "Travelers",
                    "12K+",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 35),

            // GALLERY

            sectionTitle("Gallery"),

            SizedBox(

              height: 120,

              child: ListView(

                scrollDirection:
                Axis.horizontal,

                padding:
                const EdgeInsets.symmetric(
                  horizontal: 20,
                ),

                children: [

                  galleryImage(
                    image,
                  ),

                  galleryImage(
                    "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
                  ),

                  galleryImage(
                    "https://images.unsplash.com/photo-1499856871958-5b9627545d1a",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 35),

            // ITINERARY

            sectionTitle("Sample Itinerary"),

            itineraryTile(
              "Day 1",
              "Arrival & City Exploration",
            ),

            itineraryTile(
              "Day 2",
              "Beach Adventure & Nightlife",
            ),

            itineraryTile(
              "Day 3",
              "Local Food & Culture Tour",
            ),

            const SizedBox(height: 35),

            // ACTIVE TRAVELERS

            sectionTitle("Active Travelers"),

            Padding(

              padding:
              const EdgeInsets.symmetric(
                horizontal: 20,
              ),

              child: Row(

                children: const [

                  CircleAvatar(

                    radius: 26,

                    backgroundImage:
                    NetworkImage(
                      'https://images.unsplash.com/photo-1500648767791-00dcc994a43e',
                    ),
                  ),

                  SizedBox(width: 12),

                  CircleAvatar(

                    radius: 26,

                    backgroundImage:
                    NetworkImage(
                      'https://images.unsplash.com/photo-1494790108377-be9c29b29330',
                    ),
                  ),

                  SizedBox(width: 12),

                  CircleAvatar(

                    radius: 26,

                    backgroundImage:
                    NetworkImage(
                      'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            // JOIN BUTTON

            Padding(

              padding:
              const EdgeInsets.symmetric(
                horizontal: 20,
              ),

              child: SizedBox(

                width: double.infinity,
                height: 60,

                child: ElevatedButton(

                  onPressed: () {

                    Navigator.push(

                      context,

                      MaterialPageRoute(

                        builder: (context) =>
                        const MessageScreen(

                          userName:
                          "Sarah Johnson",

                          userImage:
                          "https://images.unsplash.com/photo-1500648767791-00dcc994a43e",
                        ),
                      ),
                    );
                  },

                  style:
                  ElevatedButton.styleFrom(

                    backgroundColor:
                    const Color(
                      0xFF2563EB,
                    ),

                    shape:
                    RoundedRectangleBorder(

                      borderRadius:
                      BorderRadius.circular(
                        22,
                      ),
                    ),
                  ),

                  child: const Text(

                    "Join Adventure",

                    style: TextStyle(

                      color: Colors.white,

                      fontSize: 18,

                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  // SECTION TITLE

  static Widget sectionTitle(
      String title,
      ) {

    return Padding(

      padding: const EdgeInsets.only(
        left: 20,
        bottom: 18,
      ),

      child: Text(

        title,

        style: const TextStyle(

          fontSize: 26,

          fontWeight:
          FontWeight.bold,
        ),
      ),
    );
  }

  // INFO CARD

  static Widget infoCard(

      IconData icon,

      String title,

      String value,
      ) {

    return Container(

      width: 110,

      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
        BorderRadius.circular(22),
      ),

      child: Column(

        children: [

          Icon(
            icon,
            size: 30,
          ),

          const SizedBox(height: 10),

          Text(

            title,

            style: const TextStyle(

              fontWeight:
              FontWeight.bold,
            ),
          ),

          const SizedBox(height: 6),

          Text(value),
        ],
      ),
    );
  }

  // GALLERY IMAGE

  static Widget galleryImage(
      String image,
      ) {

    return Container(

      margin:
      const EdgeInsets.only(right: 15),

      child: ClipRRect(

        borderRadius:
        BorderRadius.circular(20),

        child: Image.network(

          image,

          width: 120,

          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // ITINERARY TILE

  static Widget itineraryTile(

      String day,

      String activity,
      ) {

    return Container(

      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),

      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
        BorderRadius.circular(22),
      ),

      child: Row(

        children: [

          Container(

            padding:
            const EdgeInsets.all(15),

            decoration: const BoxDecoration(

              color: Color(0xFF2563EB),

              shape: BoxShape.circle,
            ),

            child: Text(

              day,

              style: const TextStyle(

                color: Colors.white,

                fontWeight:
                FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(width: 20),

          Expanded(

            child: Text(

              activity,

              style: const TextStyle(

                fontSize: 18,

                fontWeight:
                FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
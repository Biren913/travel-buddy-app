import 'package:flutter/material.dart';

import 'destination_details_screen.dart';

class TripScreen extends StatelessWidget {
  const TripScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:
      const Color(0xFFF4F7F8),

      body: SafeArea(

        child: SingleChildScrollView(

          physics:
          const BouncingScrollPhysics(),

          child: Column(

            crossAxisAlignment:
            CrossAxisAlignment.start,

            children: [

              // HEADER

              Padding(

                padding: const EdgeInsets.all(20),

                child: Column(

                  crossAxisAlignment:
                  CrossAxisAlignment.start,

                  children: [

                    const Text(

                      "Explore Adventures",

                      style: TextStyle(

                        fontSize: 34,

                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(

                      "Find your next unforgettable journey ✈",

                      style: TextStyle(

                        color: Colors.grey[700],

                        fontSize: 16,
                      ),
                    ),

                    const SizedBox(height: 25),

                    // SEARCH BAR

                    TextField(

                      decoration: InputDecoration(

                        hintText:
                        "Search destinations...",

                        prefixIcon:
                        const Icon(Icons.search),

                        filled: true,

                        fillColor: Colors.white,

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
                  ],
                ),
              ),

              // CATEGORIES

              const Padding(

                padding:
                EdgeInsets.symmetric(
                  horizontal: 20,
                ),

                child: Text(

                  "Categories",

                  style: TextStyle(

                    fontSize: 24,

                    fontWeight:
                    FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 18),

              SizedBox(

                height: 50,

                child: ListView(

                  scrollDirection:
                  Axis.horizontal,

                  padding:
                  const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),

                  children: [

                    categoryChip(
                      "🏝 Beach",
                    ),

                    categoryChip(
                      "⛰ Adventure",
                    ),

                    categoryChip(
                      "🍜 Food",
                    ),

                    categoryChip(
                      "🌃 Nightlife",
                    ),

                    categoryChip(
                      "💎 Luxury",
                    ),

                    categoryChip(
                      "🚗 Road Trips",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 35),

              // FEATURED DESTINATIONS

              const Padding(

                padding:
                EdgeInsets.symmetric(
                  horizontal: 20,
                ),

                child: Text(

                  "Featured Destinations",

                  style: TextStyle(

                    fontSize: 24,

                    fontWeight:
                    FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(

                height: 280,

                child: ListView(

                  scrollDirection:
                  Axis.horizontal,

                  padding:
                  const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),

                  children: [

                    GestureDetector(

                      onTap: () {

                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder: (context) =>
                            const DestinationDetailsScreen(

                              title: "Bali",

                              country: "Indonesia",

                              image:
                              "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
                            ),
                          ),
                        );
                      },

                      child: featuredCard(

                        "Bali",

                        "Indonesia",

                        "12K Travelers",

                        "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
                      ),
                    ),

                    GestureDetector(

                      onTap: () {

                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder: (context) =>
                            const DestinationDetailsScreen(

                              title: "Tokyo",

                              country: "Japan",

                              image:
                              "https://images.unsplash.com/photo-1540959733332-eab4deabeeaf",
                            ),
                          ),
                        );
                      },

                      child: featuredCard(

                        "Tokyo",

                        "Japan",

                        "8K Travelers",

                        "https://images.unsplash.com/photo-1540959733332-eab4deabeeaf",
                      ),
                    ),

                    GestureDetector(

                      onTap: () {

                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder: (context) =>
                            const DestinationDetailsScreen(

                              title: "Paris",

                              country: "France",

                              image:
                              "https://images.unsplash.com/photo-1499856871958-5b9627545d1a",
                            ),
                          ),
                        );
                      },

                      child: featuredCard(

                        "Paris",

                        "France",

                        "15K Travelers",

                        "https://images.unsplash.com/photo-1499856871958-5b9627545d1a",
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 35),

              // TRENDING

              const Padding(

                padding:
                EdgeInsets.symmetric(
                  horizontal: 20,
                ),

                child: Text(

                  "Trending This Week 🔥",

                  style: TextStyle(

                    fontSize: 24,

                    fontWeight:
                    FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              trendingTrip(

                "Swiss Alps Adventure",

                "7 Days • Group Trip",

                "\$2200",

                "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
              ),

              trendingTrip(

                "Dubai Luxury Escape",

                "5 Days • Premium",

                "\$3500",

                "https://images.unsplash.com/photo-1512453979798-5ea266f8880c",
              ),

              const SizedBox(height: 35),

              // AI MATCH

              Padding(

                padding:
                const EdgeInsets.symmetric(
                  horizontal: 20,
                ),

                child: Container(

                  padding:
                  const EdgeInsets.all(25),

                  decoration: BoxDecoration(

                    gradient:
                    const LinearGradient(

                      colors: [

                        Color(0xFF2563EB),

                        Color(0xFF1E40AF),
                      ],
                    ),

                    borderRadius:
                    BorderRadius.circular(
                      28,
                    ),
                  ),

                  child: Column(

                    crossAxisAlignment:
                    CrossAxisAlignment.start,

                    children: [

                      const Text(

                        "AI Travel Match ✨",

                        style: TextStyle(

                          color: Colors.white,

                          fontSize: 28,

                          fontWeight:
                          FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 15),

                      const Text(

                        "Based on your interests, we found perfect trips for you.",

                        style: TextStyle(

                          color: Colors.white70,

                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(height: 25),

                      ElevatedButton(

                        onPressed: () {},

                        style:
                        ElevatedButton.styleFrom(

                          backgroundColor:
                          Colors.white,
                        ),

                        child: const Text(

                          "Explore Matches",

                          style: TextStyle(

                            color:
                            Color(0xFF2563EB),

                            fontWeight:
                            FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  static Widget categoryChip(
      String text,
      ) {

    return Container(

      margin:
      const EdgeInsets.only(right: 15),

      padding:
      const EdgeInsets.symmetric(

        horizontal: 20,
        vertical: 14,
      ),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
        BorderRadius.circular(20),
      ),

      child: Text(

        text,

        style: const TextStyle(

          fontWeight:
          FontWeight.bold,
        ),
      ),
    );
  }

  static Widget featuredCard(

      String title,

      String country,

      String travelers,

      String image,
      ) {

    return Container(

      width: 220,

      margin:
      const EdgeInsets.only(right: 20),

      decoration: BoxDecoration(

        borderRadius:
        BorderRadius.circular(28),

        image: DecorationImage(

          image: NetworkImage(image),

          fit: BoxFit.cover,
        ),
      ),

      child: Container(

        padding: const EdgeInsets.all(20),

        decoration: BoxDecoration(

          borderRadius:
          BorderRadius.circular(28),

          gradient: LinearGradient(

            begin: Alignment.topCenter,

            end: Alignment.bottomCenter,

            colors: [

              Colors.transparent,

              Colors.black
                  .withOpacity(0.8),
            ],
          ),
        ),

        child: Column(

          crossAxisAlignment:
          CrossAxisAlignment.start,

          mainAxisAlignment:
          MainAxisAlignment.end,

          children: [

            Text(

              title,

              style: const TextStyle(

                color: Colors.white,

                fontSize: 30,

                fontWeight:
                FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Text(

              country,

              style: const TextStyle(

                color: Colors.white70,
              ),
            ),

            const SizedBox(height: 8),

            Text(

              travelers,

              style: const TextStyle(

                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget trendingTrip(

      String title,

      String subtitle,

      String price,

      String image,
      ) {

    return Container(

      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
        BorderRadius.circular(25),
      ),

      child: Row(

        children: [

          ClipRRect(

            borderRadius:
            const BorderRadius.only(

              topLeft: Radius.circular(25),

              bottomLeft:
              Radius.circular(25),
            ),

            child: Image.network(

              image,

              width: 120,
              height: 120,

              fit: BoxFit.cover,
            ),
          ),

          Expanded(

            child: Padding(

              padding:
              const EdgeInsets.all(16),

              child: Column(

                crossAxisAlignment:
                CrossAxisAlignment.start,

                children: [

                  Text(

                    title,

                    style: const TextStyle(

                      fontSize: 22,

                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(subtitle),

                  const SizedBox(height: 10),

                  Text(

                    price,

                    style: const TextStyle(

                      color:
                      Color(0xFF2563EB),

                      fontWeight:
                      FontWeight.bold,

                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
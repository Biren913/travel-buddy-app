import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:
      const Color(0xFFF4F7F8),

      body: SafeArea(

        child: SingleChildScrollView(

          child: Column(

            children: [

              // COVER IMAGE

              Stack(

                clipBehavior: Clip.none,

                children: [

                  Container(

                    height: 240,
                    width: double.infinity,

                    decoration: const BoxDecoration(

                      image: DecorationImage(

                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee',
                        ),

                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Positioned(

                    bottom: -55,
                    left: 20,

                    child: Container(

                      decoration: BoxDecoration(

                        border: Border.all(
                          color: Colors.white,
                          width: 4,
                        ),

                        shape: BoxShape.circle,
                      ),

                      child: const CircleAvatar(

                        radius: 55,

                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e',
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 70),

              // USER INFO

              const Text(

                'Aahan Singh',

                style: TextStyle(

                  fontSize: 30,

                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(

                'Global Explorer ✈',

                style: TextStyle(

                  color: Colors.grey[700],

                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 30),

              // STATS

              Padding(

                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),

                child: Row(

                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,

                  children: [

                    statCard(
                      'Trips',
                      '18',
                    ),

                    statCard(
                      'Countries',
                      '9',
                    ),

                    statCard(
                      'Buddies',
                      '42',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // UPCOMING TRIPS

              sectionTitle('Upcoming Trips'),

              upcomingTrip(
                'Bali Adventure',
                '15 Jun - 24 Jun',
                'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
              ),

              upcomingTrip(
                'Tokyo Night Tour',
                '20 Jul - 30 Jul',
                'https://images.unsplash.com/photo-1540959733332-eab4deabeeaf',
              ),

              // EXPENSE TRACKER

              sectionTitle('Travel Expenses'),

              expenseCard(),

              // ACHIEVEMENTS

              sectionTitle('Achievements'),

              Padding(

                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),

                child: Wrap(

                  spacing: 12,
                  runSpacing: 12,

                  children: [

                    badge('🌍 World Explorer'),
                    badge('🏔 Mountain Lover'),
                    badge('✈ Frequent Traveler'),
                    badge('🏝 Beach Hunter'),
                  ],
                ),
              ),

              const SizedBox(height: 35),

              // SETTINGS

              sectionTitle('Manage Account'),

              profileButton(
                context,
                Icons.settings,
                'Settings',
                false,
              ),

              profileButton(
                context,
                Icons.notifications,
                'Notifications',
                false,
              ),

              profileButton(
                context,
                Icons.bookmark,
                'Saved Trips',
                false,
              ),

              profileButton(
                context,
                Icons.logout,
                'Logout',
                true,
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  // STAT CARD

  Widget statCard(String title, String value) {

    return Container(

      width: 105,
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
        BorderRadius.circular(22),

        boxShadow: [

          BoxShadow(

            color:
            Colors.grey.withOpacity(0.1),

            blurRadius: 10,
          ),
        ],
      ),

      child: Column(

        children: [

          Text(

            value,

            style: const TextStyle(

              fontSize: 28,

              fontWeight:
              FontWeight.bold,
            ),
          ),

          const SizedBox(height: 8),

          Text(title),
        ],
      ),
    );
  }

  // SECTION TITLE

  Widget sectionTitle(String title) {

    return Padding(

      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: 15,
        top: 10,
      ),

      child: Align(

        alignment: Alignment.centerLeft,

        child: Text(

          title,

          style: const TextStyle(

            fontSize: 24,

            fontWeight:
            FontWeight.bold,
          ),
        ),
      ),
    );
  }

  // UPCOMING TRIP CARD

  Widget upcomingTrip(
      String title,
      String date,
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
        BorderRadius.circular(24),

        boxShadow: [

          BoxShadow(

            color:
            Colors.grey.withOpacity(0.1),

            blurRadius: 10,
          ),
        ],
      ),

      child: Row(

        children: [

          ClipRRect(

            borderRadius:
            const BorderRadius.only(

              topLeft: Radius.circular(24),
              bottomLeft: Radius.circular(24),
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

              padding: const EdgeInsets.all(16),

              child: Column(

                crossAxisAlignment:
                CrossAxisAlignment.start,

                children: [

                  Text(

                    title,

                    style: const TextStyle(

                      fontSize: 20,

                      fontWeight:
                      FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(date),

                  const SizedBox(height: 15),

                  ElevatedButton(

                    onPressed: () {},

                    style:
                    ElevatedButton.styleFrom(

                      backgroundColor:
                      const Color(0xFF2563EB),
                    ),

                    child: const Text(

                      'View Details',

                      style: TextStyle(
                        color: Colors.white,
                      ),
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

  // EXPENSE CARD

  Widget expenseCard() {

    return Container(

      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),

      padding: const EdgeInsets.all(25),

      decoration: BoxDecoration(

        gradient: const LinearGradient(

          colors: [
            Color(0xFF2563EB),
            Color(0xFF1E40AF),
          ],
        ),

        borderRadius:
        BorderRadius.circular(25),
      ),

      child: Column(

        crossAxisAlignment:
        CrossAxisAlignment.start,

        children: const [

          Text(

            'Total Travel Spending',

            style: TextStyle(

              color: Colors.white70,

              fontSize: 16,
            ),
          ),

          SizedBox(height: 10),

          Text(

            '\$5,420',

            style: TextStyle(

              color: Colors.white,

              fontSize: 36,

              fontWeight:
              FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  // BADGES

  Widget badge(String text) {

    return Container(

      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 14,
      ),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
        BorderRadius.circular(18),
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

  // PROFILE BUTTON

  Widget profileButton(

      BuildContext context,

      IconData icon,

      String text,

      bool isLogout,
      ) {

    return Container(

      margin: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 8,
      ),

      decoration: BoxDecoration(

        color: Colors.white,

        borderRadius:
        BorderRadius.circular(20),
      ),

      child: ListTile(

        leading: Icon(

          icon,

          color: isLogout
              ? Colors.red
              : Colors.black,
        ),

        title: Text(

          text,

          style: TextStyle(

            color: isLogout
                ? Colors.red
                : Colors.black,

            fontWeight:
            FontWeight.w500,
          ),
        ),

        trailing:
        const Icon(Icons.arrow_forward_ios),

        onTap: () {

          if (isLogout) {

            Navigator.pushNamedAndRemoveUntil(

              context,

              '/',

                  (route) => false,
            );
          }
        },
      ),
    );
  }
}
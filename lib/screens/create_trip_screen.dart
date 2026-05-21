import 'package:flutter/material.dart';

import '../trip_data.dart';

class CreateTripScreen extends StatefulWidget {
  const CreateTripScreen({super.key});

  @override
  State<CreateTripScreen> createState() =>
      _CreateTripScreenState();
}

class _CreateTripScreenState
    extends State<CreateTripScreen> {

  final TextEditingController
  titleController =
  TextEditingController();

  final TextEditingController
  locationController =
  TextEditingController();

  final TextEditingController
  budgetController =
  TextEditingController();

  final TextEditingController
  dateController =
  TextEditingController();

  final TextEditingController
  imageController =
  TextEditingController();

  final TextEditingController
  descriptionController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:
      const Color(0xFFF4F7F8),

      body: SafeArea(

        child: SingleChildScrollView(

          physics:
          const BouncingScrollPhysics(),

          child: Padding(

            padding: const EdgeInsets.all(20),

            child: Column(

              crossAxisAlignment:
              CrossAxisAlignment.start,

              children: [

                // HEADER

                const Text(

                  "Create New Trip",

                  style: TextStyle(

                    fontSize: 32,

                    fontWeight:
                    FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Text(

                  "Share your travel plans with buddies ✈",

                  style: TextStyle(

                    color: Colors.grey[700],

                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 30),

                // LIVE IMAGE PREVIEW

                Container(

                  height: 240,
                  width: double.infinity,

                  decoration: BoxDecoration(

                    borderRadius:
                    BorderRadius.circular(30),

                    color: Colors.white,
                  ),

                  child:
                  imageController.text.isEmpty

                      ? Column(

                    mainAxisAlignment:
                    MainAxisAlignment
                        .center,

                    children: const [

                      Icon(

                        Icons.image,

                        size: 70,

                        color:
                        Colors.grey,
                      ),

                      SizedBox(height: 15),

                      Text(

                        "Trip Image Preview",

                        style:
                        TextStyle(

                          fontSize: 18,

                          color: Colors
                              .grey,
                        ),
                      ),
                    ],
                  )

                      : ClipRRect(

                    borderRadius:
                    BorderRadius
                        .circular(
                      30,
                    ),

                    child: Image.network(

                      imageController
                          .text,

                      fit: BoxFit.cover,

                      errorBuilder:

                          (context,
                          error,
                          stackTrace) {

                        return Column(

                          mainAxisAlignment:
                          MainAxisAlignment
                              .center,

                          children: const [

                            Icon(

                              Icons
                                  .broken_image,

                              size: 70,

                              color: Colors
                                  .grey,
                            ),

                            SizedBox(
                                height:
                                15),

                            Text(

                              "Invalid Image URL",

                              style:
                              TextStyle(

                                color:
                                Colors
                                    .grey,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // TITLE

                buildField(

                  controller:
                  titleController,

                  hint: "Trip Title",

                  icon:
                  Icons.flight_takeoff,
                ),

                const SizedBox(height: 20),

                // LOCATION

                buildField(

                  controller:
                  locationController,

                  hint: "Destination",

                  icon:
                  Icons.location_on,
                ),

                const SizedBox(height: 20),

                // BUDGET

                buildField(

                  controller:
                  budgetController,

                  hint: "Budget",

                  icon:
                  Icons.attach_money,
                ),

                const SizedBox(height: 20),

                // DATES

                buildField(

                  controller:
                  dateController,

                  hint: "Trip Dates",

                  icon:
                  Icons.calendar_month,
                ),

                const SizedBox(height: 20),

                // IMAGE URL

                buildField(

                  controller:
                  imageController,

                  hint:
                  "Paste Image URL",

                  icon: Icons.image,
                ),

                const SizedBox(height: 25),

                // DESCRIPTION

                TextField(

                  controller:
                  descriptionController,

                  maxLines: 5,

                  decoration: InputDecoration(

                    hintText:
                    "Describe your trip plans...",

                    filled: true,

                    fillColor: Colors.white,

                    border: OutlineInputBorder(

                      borderRadius:
                      BorderRadius.circular(
                        22,
                      ),

                      borderSide:
                      BorderSide.none,
                    ),
                  ),

                  onChanged: (value) {

                    setState(() {});
                  },
                ),

                const SizedBox(height: 35),

                // LIVE PREVIEW CARD

                const Text(

                  "Live Trip Preview",

                  style: TextStyle(

                    fontSize: 26,

                    fontWeight:
                    FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Container(

                  decoration: BoxDecoration(

                    color: Colors.white,

                    borderRadius:
                    BorderRadius.circular(
                      28,
                    ),
                  ),

                  child: Column(

                    crossAxisAlignment:
                    CrossAxisAlignment
                        .start,

                    children: [

                      ClipRRect(

                        borderRadius:
                        const BorderRadius.only(

                          topLeft:
                          Radius.circular(
                            28,
                          ),

                          topRight:
                          Radius.circular(
                            28,
                          ),
                        ),

                        child: Image.network(

                          imageController
                              .text
                              .isEmpty
                              ? "https://images.unsplash.com/photo-1507525428034-b723cf961d3e"
                              : imageController
                              .text,

                          height: 220,

                          width:
                          double.infinity,

                          fit: BoxFit.cover,

                          errorBuilder:

                              (context,
                              error,
                              stackTrace) {

                            return Container(

                              height: 220,

                              color:
                              Colors.grey[
                              300],

                              child:
                              const Center(

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

                            Text(

                              titleController
                                  .text
                                  .isEmpty
                                  ? "Your Trip Title"
                                  : titleController
                                  .text,

                              style:
                              const TextStyle(

                                fontSize: 26,

                                fontWeight:
                                FontWeight
                                    .bold,
                              ),
                            ),

                            const SizedBox(
                                height: 10),

                            Text(

                              locationController
                                  .text
                                  .isEmpty
                                  ? "Destination"
                                  : locationController
                                  .text,
                            ),

                            const SizedBox(
                                height: 8),

                            Text(

                              budgetController
                                  .text
                                  .isEmpty
                                  ? "Budget"
                                  : budgetController
                                  .text,
                            ),

                            const SizedBox(
                                height: 8),

                            Text(

                              dateController
                                  .text
                                  .isEmpty
                                  ? "Dates"
                                  : dateController
                                  .text,
                            ),

                            const SizedBox(
                                height: 15),

                            Text(

                              descriptionController
                                  .text
                                  .isEmpty
                                  ? "Trip description preview..."
                                  : descriptionController
                                  .text,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),

                // POST BUTTON

                SizedBox(

                  width: double.infinity,
                  height: 60,

                  child: ElevatedButton(

                    onPressed: () {

                      if (titleController
                          .text
                          .isEmpty ||
                          locationController
                              .text
                              .isEmpty ||
                          imageController
                              .text
                              .isEmpty) {

                        ScaffoldMessenger.of(
                            context)
                            .showSnackBar(

                          const SnackBar(

                            content: Text(
                              "Please fill all fields",
                            ),
                          ),
                        );

                        return;
                      }

                      trips.insert(0, {

                        "user":
                        "Aahan Singh",

                        "title":
                        titleController.text,

                        "location":
                        locationController.text,

                        "budget":
                        budgetController.text,

                        "dates":
                        dateController.text,

                        "image":
                        imageController.text,

                        "description":
                        descriptionController.text,
                      });

                      ScaffoldMessenger.of(
                          context)
                          .showSnackBar(

                        const SnackBar(

                          content: Text(
                            "Trip posted successfully!",
                          ),

                          backgroundColor:
                          Colors.green,
                        ),
                      );

                      Navigator.pop(context);
                    },

                    style:
                    ElevatedButton.styleFrom(

                      backgroundColor:
                      const Color(0xFF2563EB),

                      shape:
                      RoundedRectangleBorder(

                        borderRadius:
                        BorderRadius.circular(
                          22,
                        ),
                      ),
                    ),

                    child: const Text(

                      "Post Trip",

                      style: TextStyle(

                        color: Colors.white,

                        fontSize: 18,

                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildField({

    required TextEditingController
    controller,

    required String hint,

    required IconData icon,
  }) {

    return TextField(

      controller: controller,

      onChanged: (value) {

        setState(() {});
      },

      decoration: InputDecoration(

        hintText: hint,

        prefixIcon: Icon(icon),

        filled: true,

        fillColor: Colors.white,

        border: OutlineInputBorder(

          borderRadius:
          BorderRadius.circular(22),

          borderSide:
          BorderSide.none,
        ),
      ),
    );
  }
}
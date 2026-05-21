import 'package:flutter/material.dart';

import 'navigation_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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

            children: [

              // TOP IMAGE

              Stack(

                children: [

                  Container(

                    height: 300,
                    width: double.infinity,

                    decoration: const BoxDecoration(

                      borderRadius:
                      BorderRadius.only(

                        bottomLeft:
                        Radius.circular(35),

                        bottomRight:
                        Radius.circular(35),
                      ),

                      image: DecorationImage(

                        image: NetworkImage(
                          'https://images.unsplash.com/photo-1548013146-72479768bada?q=80&w=1200&auto=format&fit=crop',
                        ),

                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Container(

                    height: 300,

                    decoration: BoxDecoration(

                      borderRadius:
                      const BorderRadius.only(

                        bottomLeft:
                        Radius.circular(35),

                        bottomRight:
                        Radius.circular(35),
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
                              .withOpacity(0.6),
                        ],
                      ),
                    ),
                  ),

                  const Positioned(

                    left: 25,
                    bottom: 40,

                    child: Column(

                      crossAxisAlignment:
                      CrossAxisAlignment.start,

                      children: [

                        Text(

                          "Travel Buddy",

                          style: TextStyle(

                            color: Colors.white,

                            fontSize: 34,

                            fontWeight:
                            FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 8),

                        Text(

                          "Find your perfect travel companion",

                          style: TextStyle(

                            color: Colors.white70,

                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              Padding(

                padding:
                const EdgeInsets.symmetric(
                  horizontal: 25,
                ),

                child: Column(

                  crossAxisAlignment:
                  CrossAxisAlignment.start,

                  children: [

                    const Text(

                      "Welcome",

                      style: TextStyle(

                        fontSize: 32,

                        fontWeight:
                        FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(

                      "Sign in to continue planning amazing trips.",

                      style: TextStyle(

                        color: Colors.grey,

                        fontSize: 15,
                      ),
                    ),

                    const SizedBox(height: 35),

                    // EMAIL

                    TextField(

                      decoration: InputDecoration(

                        hintText:
                        "Email address",

                        prefixIcon:
                        const Icon(
                          Icons.email_outlined,
                        ),

                        filled: true,

                        fillColor:
                        Colors.white,

                        border:
                        OutlineInputBorder(

                          borderRadius:
                          BorderRadius.circular(
                            18,
                          ),

                          borderSide:
                          BorderSide.none,
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // PASSWORD

                    TextField(

                      obscureText: true,

                      decoration: InputDecoration(

                        hintText:
                        "Password",

                        prefixIcon:
                        const Icon(
                          Icons.lock_outline,
                        ),

                        suffixIcon:
                        const Icon(
                          Icons.visibility_off,
                        ),

                        filled: true,

                        fillColor:
                        Colors.white,

                        border:
                        OutlineInputBorder(

                          borderRadius:
                          BorderRadius.circular(
                            18,
                          ),

                          borderSide:
                          BorderSide.none,
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    Align(

                      alignment:
                      Alignment.centerRight,

                      child: TextButton(

                        onPressed: () {},

                        child: const Text(

                          "Forgot Password?",

                          style: TextStyle(

                            color:
                            Color(0xFF2563EB),

                            fontWeight:
                            FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 15),

                    // SIGN IN BUTTON

                    SizedBox(

                      width: double.infinity,
                      height: 58,

                      child: ElevatedButton(

                        onPressed: () {

                          Navigator.pushReplacement(

                            context,

                            MaterialPageRoute(

                              builder: (context) =>
                              const NavigationScreen(),
                            ),
                          );
                        },

                        style:
                        ElevatedButton.styleFrom(

                          backgroundColor:
                          const Color(0xFF2563EB),

                          shape:
                          RoundedRectangleBorder(

                            borderRadius:
                            BorderRadius.circular(
                              18,
                            ),
                          ),
                        ),

                        child: const Text(

                          "Sign In",

                          style: TextStyle(

                            fontSize: 18,

                            color: Colors.white,

                            fontWeight:
                            FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // GOOGLE BUTTON

                    SizedBox(

                      width: double.infinity,
                      height: 58,

                      child:
                      OutlinedButton.icon(

                        onPressed: () {

                          showModalBottomSheet(

                            context: context,

                            backgroundColor:
                            Colors.transparent,

                            builder: (context) {

                              return Container(

                                padding:
                                const EdgeInsets.all(
                                  25,
                                ),

                                decoration:
                                const BoxDecoration(

                                  color: Colors.white,

                                  borderRadius:
                                  BorderRadius.only(

                                    topLeft:
                                    Radius.circular(
                                      30,
                                    ),

                                    topRight:
                                    Radius.circular(
                                      30,
                                    ),
                                  ),
                                ),

                                child: Column(

                                  mainAxisSize:
                                  MainAxisSize.min,

                                  children: [

                                    Container(

                                      width: 50,
                                      height: 5,

                                      decoration:
                                      BoxDecoration(

                                        color:
                                        Colors.grey[300],

                                        borderRadius:
                                        BorderRadius.circular(
                                          20,
                                        ),
                                      ),
                                    ),

                                    const SizedBox(
                                        height: 25),

                                    const Text(

                                      "Choose Google Account",

                                      style: TextStyle(

                                        fontSize: 24,

                                        fontWeight:
                                        FontWeight.bold,
                                      ),
                                    ),

                                    const SizedBox(
                                        height: 25),

                                    // ACCOUNT 1

                                    ListTile(

                                      leading:
                                      const CircleAvatar(

                                        backgroundImage:
                                        NetworkImage(
                                          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e',
                                        ),
                                      ),

                                      title: const Text(
                                        "aahan@gmail.com",
                                      ),

                                      subtitle:
                                      const Text(
                                        "Personal Account",
                                      ),

                                      onTap: () {

                                        Navigator.pop(
                                            context);

                                        Navigator.pushReplacement(

                                          context,

                                          MaterialPageRoute(

                                            builder:
                                                (context) =>
                                            const NavigationScreen(),
                                          ),
                                        );
                                      },
                                    ),

                                    const Divider(),

                                    // ACCOUNT 2

                                    ListTile(

                                      leading:
                                      const CircleAvatar(

                                        backgroundImage:
                                        NetworkImage(
                                          'https://images.unsplash.com/photo-1494790108377-be9c29b29330',
                                        ),
                                      ),

                                      title: const Text(
                                        "travelbuddy@gmail.com",
                                      ),

                                      subtitle:
                                      const Text(
                                        "Work Account",
                                      ),

                                      onTap: () {

                                        Navigator.pop(
                                            context);

                                        Navigator.pushReplacement(

                                          context,

                                          MaterialPageRoute(

                                            builder:
                                                (context) =>
                                            const NavigationScreen(),
                                          ),
                                        );
                                      },
                                    ),

                                    const SizedBox(
                                        height: 20),
                                  ],
                                ),
                              );
                            },
                          );
                        },

                        icon: const Icon(

                          Icons.g_mobiledata,

                          size: 30,

                          color: Colors.black,
                        ),

                        label: const Text(

                          "Continue with Google",

                          style: TextStyle(

                            color: Colors.black,

                            fontSize: 16,
                          ),
                        ),

                        style:
                        OutlinedButton.styleFrom(

                          shape:
                          RoundedRectangleBorder(

                            borderRadius:
                            BorderRadius.circular(
                              18,
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 40),

                    Row(

                      mainAxisAlignment:
                      MainAxisAlignment.center,

                      children: [

                        const Text(

                          "Don't have an account?",

                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),

                        TextButton(

                          onPressed: () {},

                          child: const Text(

                            "Sign Up",

                            style: TextStyle(

                              fontWeight:
                              FontWeight.bold,

                              color:
                              Color(0xFF00B140),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
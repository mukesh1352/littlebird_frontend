import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constants.dart';
import 'widgets/divider_or.dart';
import 'widgets/email_field.dart';
import 'widgets/footer.dart';
import 'widgets/google_button.dart';
import 'widgets/primary_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController =
      TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xffF8F6F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: size.height,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  children: [

                    const SizedBox(height: 48),

                    SvgPicture.asset(
                      "assets/logo.svg",
                      width: 168,
                    ),

                    const SizedBox(height: 54),

                    SizedBox(
                      height: 455,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [

                          // ===========================
                          // BIG SHADOW
                          // ===========================

                          Positioned(
                            left: 18,
                            right: 18,
                            top: 24,
                            bottom: 0,
                            child: IgnorePointer(
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(36),
                                  boxShadow: [

                                    BoxShadow(
                                      color: Colors.black.withValues(alpha: .16),
                                      blurRadius: 90,
                                      spreadRadius: 8,
                                      offset: const Offset(0, 36),
                                    ),

                                    BoxShadow(
                                      color: Colors.black.withValues(alpha: .10),
                                      blurRadius: 45,
                                      spreadRadius: 2,
                                      offset: const Offset(0, 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          // ===========================
                          // BACK CARD
                          // ===========================

                          Positioned(
                            left: 34,
                            right: 34,
                            top: 24,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(34),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 16,
                                  sigmaY: 16,
                                ),
                                child: Container(
                                  height: 355,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withValues(alpha: .18),
                                    borderRadius:
                                        BorderRadius.circular(34),
                                    border: Border.all(
                                      color: Colors.white
                                          .withValues(alpha: .22),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // ===========================
                          // MIDDLE CARD
                          // ===========================

                          Positioned(
                            left: 17,
                            right: 17,
                            top: 12,
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(34),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 20,
                                  sigmaY: 20,
                                ),
                                child: Container(
                                  height: 372,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withValues(alpha: .28),
                                    borderRadius:
                                        BorderRadius.circular(34),
                                    border: Border.all(
                                      color: Colors.white
                                          .withValues(alpha: .30),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),

                          // ===========================
                          // MAIN CARD
                          // ===========================

                          Positioned.fill(
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(
                                24,
                                24,
                                24,
                                18,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xff161618),
                                borderRadius:
                                    BorderRadius.circular(36),
                                boxShadow: [

                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: .22),
                                    blurRadius: 60,
                                    spreadRadius: -6,
                                    offset: const Offset(0, 22),
                                  ),
                                ],
                              ),

                              child: Column(
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  // ==========================================
                                  // TITLE
                                  // ==========================================

                                  const SizedBox(height: 4),

                                  const Text(
                                    "Welcome to Littlebird",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: -.3,
                                      height: 1,
                                    ),
                                  ),

                                  const SizedBox(height: 10),

                                  const Text(
                                    "Enter your email address to login\nor create an account",
                                    style: TextStyle(
                                      color: Color(0xffAAAAAE),
                                      fontSize: 14,
                                      height: 1.45,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),

                                  const SizedBox(height: 24),

                                  // ==========================================
                                  // EMAIL FIELD
                                  // ==========================================

                                  SizedBox(
                                    height: 56,
                                    child: EmailField(
                                      controller: emailController,
                                    ),
                                  ),

                                  const SizedBox(height: 16),

                                  // ==========================================
                                  // EMAIL BUTTON
                                  // ==========================================

                                  SizedBox(
                                    height: 56,
                                    width: double.infinity,
                                    child: PrimaryButton(
                                      text: "Continue with Email",
                                      onTap: () {
                                        FocusScope.of(context).unfocus();

                                        debugPrint(
                                          emailController.text.trim(),
                                        );
                                      },
                                    ),
                                  ),

                                  const SizedBox(height: 18),

                                  // ==========================================
                                  // DIVIDER
                                  // ==========================================

                                  const DividerOr(),

                                  const SizedBox(height: 18),

                                  // ==========================================
                                  // GOOGLE BUTTON
                                  // ==========================================

                                  SizedBox(
                                    height: 56,
                                    width: double.infinity,
                                    child: GoogleButton(
                                      onTap: () {
                                        // TODO
                                      },
                                    ),
                                  ),

                                  const SizedBox(height: 18),

                                  // ==========================================
                                  // SUPPORT
                                  // ==========================================

                                  Center(
                                    child: TextButton(
                                      onPressed: () {
                                        // TODO
                                      },
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                        minimumSize: Size.zero,
                                        tapTargetSize:
                                            MaterialTapTargetSize
                                                .shrinkWrap,
                                      ),
                                      child: const Text(
                                        "Contact Support",
                                        style: TextStyle(
                                          color: Color(0xff62A8FF),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),

                                  const Spacer(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    const Footer(),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool rememberMe = false;
  bool isPasswordVisible = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section with dark teal background
            Container(
              height: 320,
              decoration: const BoxDecoration(
                color: Color(0xFF2B5E5C),
                image: DecorationImage(
                  image: AssetImage('assets/images/losfinalbg1.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Color.fromRGBO(
                        43, 94, 92, 0.8), // Dark teal with 70% opacity
                    BlendMode.darken,
                  ),
                ),
              ),
              child: Stack(
                children: [
                  // Decorative curved shape
                  Positioned(
                    top: 0,
                    right: -50,
                    child: Container(
                      width: 300,
                      height: 300,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFFC107),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),

                  // Central content
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Yellow circle with icon
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Color(0xFFFFC107),
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.menu_rounded,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'LOS ORIGINATION SYSTEM\nQuick SME and UNLAD Plus',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Login Form Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Email Field
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      hintText: 'johnwilliams@gmail.com',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontStyle: FontStyle.italic,
                      ),
                      labelStyle: TextStyle(
                        color: Colors.grey[600],
                      ),
                      filled: false,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFFFC107),
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Password Field
                  TextField(
                    controller: passwordController,
                    obscureText: !isPasswordVisible,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: '••••••••',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                      ),
                      labelStyle: TextStyle(
                        color: Colors.grey[600],
                      ),
                      filled: false,
                      suffixIcon: IconButton(
                        icon: Icon(
                          isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey[600],
                        ),
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey[300]!,
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFFFC107),
                          width: 2,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  // Remember me & Forgot Password Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: rememberMe,
                            onChanged: (value) {
                              setState(() {
                                rememberMe = value ?? false;
                              });
                            },
                            activeColor: const Color(0xFF6B8E7F),
                          ),
                          Text(
                            'Remember me',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          // Handle forgot password
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  // Login Button
                  ElevatedButton(
                    onPressed: () {
                      // Handle login
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6B8E7F),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Sign Up Link
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: _buildFooter(),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Widget _buildFooter() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border(top: BorderSide(color: Colors.grey[300]!, width: 1)),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/mrilogo2.png',
            scale: 2,
          ),
          SizedBox(height: 4),
          const Text(
            'Product by: CMIT Inc. © 2023 v | FMT-',
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(height: 12),
          Divider(height: 1, color: Colors.grey[400]),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}

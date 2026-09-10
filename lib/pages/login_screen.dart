import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Theme(
  data: Theme.of(context).copyWith(
    textTheme: Theme.of(context)
        .textTheme
        .apply(fontFamily: 'Gilroy'),
  ),
  child: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),

              Row(
                children: [
                  const Icon(Icons.arrow_back_ios_new, size: 20),
                  const SizedBox(width: 30),
                  const Text(
                    "Login",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              const Text(
                "Welcome Back",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 17),

              const Text(
                "Sign In to your account",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),

              const SizedBox(height: 42),

              const Text(
                "Email Address",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),

              const SizedBox(height: 15),

              TextField(
                decoration: InputDecoration(
                  hintText: "helloteja@gmail.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
              ),

              const SizedBox(height: 22),

              const Text(
                "Password",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),

              const SizedBox(height: 15),

              TextField(
                obscureText: hidePassword,
                decoration: InputDecoration(
                  hintText: "••••••••••••••",
                  suffixIcon: IconButton(
                    icon: Icon(
                      hidePassword
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                    ),
                    onPressed: () {
                      setState(() {
                        hidePassword = !hidePassword;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                ),
              ),

              const SizedBox(height: 14),

              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Color(0xffF28B4B), fontSize: 12),
                ),
              ),

              const SizedBox(height: 23),

              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff3047BA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              const Center(
                child: Text(
                  "Don't have an account?  Sign Up",
                  style: TextStyle(fontSize: 12),
                ),
              ),

              const SizedBox(height: 30),

              const Center(
                child: Text(
                  "Or Sign In With",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),

              const SizedBox(height: 25),

              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/icons/btnSigninwithGoogle.png",
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 8),
                          const Text("Google"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/icons/btnSigninwithFb.png",
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 8),
                          const Text("Facebook"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 22),

              Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account?  ",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xffA9A9A9),
                        ),
                      ),
                      TextSpan(
                        text: "Join Us",
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xffEA9459),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
  ),
    );
  }
}

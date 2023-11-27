import 'package:flutter/material.dart';
import 'package:flutter_application/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
    myFocusNode.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Welcome to Merch",
            style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 28.0,
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Center(
            child: Text(
              "Let's Shopping",
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24.0,
              right: 24,
              top: 20,
              bottom: 20,
            ),
            child: Container(
              width: 295,
              height: 47,
              child: TextFormField(
                autofocus: true,
                focusNode: myFocusNode,
                cursorColor: Colors.black,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  filled: true,
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  hintText: 'user@gmail.com',
                  hintStyle: GoogleFonts.montserrat(
                    color: Color(0xff68687a),
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 295,
            height: 47,
            child: TextFormField(
              autofocus: true,
              cursorColor: Colors.black,
              keyboardType: TextInputType.phone,
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.grey[200],
                filled: true,
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                hintText: '1234',
                hintStyle: GoogleFonts.montserrat(
                  color: Color(0xff68687a),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          // Container(
          //   width: 295,
          //   height: 47,
          //   child: TextFormField(
          //     autofocus: true,
          //     cursorColor: Colors.black,
          //     keyboardType: TextInputType.phone,
          //     obscureText: true,
          //     style: GoogleFonts.montserrat(color: Colors.black),
          //     decoration: InputDecoration(
          //       fillColor: Colors.grey[200],
          //       filled: true,
          //       labelText: "Password",
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(12.0),
          //         borderSide: BorderSide.none,
          //       ),
          //       hintText: '1234',
          //       hintStyle: GoogleFonts.montserrat(
          //         color: Color(0xff68687a),
          //         fontSize: 14,
          //       ),
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 295,
            height: 47,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Text(
                'Login',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 40),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Text(
              'Login',
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Berikan aksi nyatamu",
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: 70, bottom: 10, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email Adress",
              style: GoogleFonts.poppins(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(
                            hintText: 'Alamat Email',
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Password",
              style: GoogleFonts.poppins(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration.collapsed(
                            hintText: 'Password',
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget loginButton() {
      return Container(
        height: 90,
        width: double.infinity,
        padding: EdgeInsets.only(top: 40, left: 16, right: 16),
        child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.red.shade100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                )),
            child: Text(
              "LOGIN",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 17,
              ),
            )),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsetsDirectional.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
            TextButton(
                child: Text('Sign Up'),
                onPressed: () {
                  Navigator.pushNamed(context, '/sign-up');
                }),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.red,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(),
          child: Column(
            children: [
              header(),
              emailInput(),
              passwordInput(),
              loginButton(),
              footer(),
            ],
          ),
        ),
      ),
    );
  }
}
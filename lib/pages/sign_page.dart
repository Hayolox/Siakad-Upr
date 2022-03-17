import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:siakad/pages/main_page.dart';

class SignPage extends StatefulWidget {
  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: <Widget>[
            if (!isKeyboard)

              /// Logo
              DelayedDisplay(
                delay: const Duration(seconds: 1),
                child: Lottie.asset('assets/login.json', height: 300),
              ),
            if (isKeyboard)
              const SizedBox(
                height: 100,
              ),

            /// Form NIM
            DelayedDisplay(
                delay: const Duration(seconds: 2),
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Text('Nim : ', style: GoogleFonts.poppins()),
                      Expanded(
                          child: TextFormField(
                        autocorrect: false,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Contoh 193010503011',
                        ),
                      ))
                    ],
                  ),
                )),

            ///Form password
            DelayedDisplay(
                delay: const Duration(seconds: 3),
                child: Container(
                  margin: const EdgeInsets.only(left: 30, right: 30, top: 15),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Pass: ', style: GoogleFonts.poppins()),
                        Expanded(
                            child: TextFormField(
                          autocorrect: false,
                          textInputAction: TextInputAction.done,
                          obscureText: _isHidden,
                          decoration: const InputDecoration.collapsed(
                            hintText: '',
                          ),
                        )),
                        IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {
                              if (_isHidden == true) {
                                _isHidden = false;
                              } else {
                                _isHidden = true;
                              }
                              setState(() {});
                            },
                            icon: const Icon(Icons.remove_red_eye_outlined)),
                      ],
                    ),
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            DelayedDisplay(
              delay: const Duration(seconds: 4),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return const MainPage();
                    },
                  ));
                },

                ///button login
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

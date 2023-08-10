import 'package:flutter/material.dart';

import 'otp.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController countryCode = TextEditingController();
  @override
  void initState() {
    countryCode.text = "+91";
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(left: 30, right: 30),
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                "Assets/img.png",
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Phone Verification",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  )),
              const SizedBox(
                height: 15,
              ),
              const Text(
                ("We need to  register your phone before getting started!"),
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),

              // mobile formfield

              const SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                      child: TextField(
                        controller: countryCode,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "|",
                      style: TextStyle(fontSize: 35, color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: "Phone"),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const OtpScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade600,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: const Text(
                    "Send the code",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

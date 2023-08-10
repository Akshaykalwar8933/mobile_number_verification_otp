import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),),
      ),
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

               const SizedBox(
                height: 15,
              ),
            const Pinput(
              length: 6,

              pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,

            ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OtpScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade600,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: const Text(
                    "Verify phone number",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Edit phone number?",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold,
                        color: Colors.black),
                      ))
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}

import 'package:ecommerce_shop_ui/screens/recovery_screen.dart';
import 'package:flutter/material.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

class OTPVerifyScreen extends StatefulWidget {
  const OTPVerifyScreen({super.key});

  @override
  State<OTPVerifyScreen> createState() => _OTPVerifyScreenState();
}

class _OTPVerifyScreenState extends State<OTPVerifyScreen> {
  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(10.0),
    );
  }

  /// get signature code
  // _getSignatureCode() async {
  //   String? signature = await SmsVerification.getAppSignature();
  //   print("signature $signature");
  // }

  TextEditingController textEditingController =
      new TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Enter OTP",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 150),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Please enter the OTP code that we have sent you to your number, please check your number and enter here OTP to verify",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 50),
              TextFieldPin(
                textController: textEditingController,
                autoFocus: false,
                codeLength: 4,
                alignment: MainAxisAlignment.center,
                defaultBoxSize: 55.0,
                margin: 10,
                selectedBoxSize: 50.0,
                textStyle: TextStyle(fontSize: 16),
                defaultDecoration: _pinPutDecoration.copyWith(
                    border: Border.all(color: Colors.grey)),
                selectedDecoration: _pinPutDecoration,
                onChange: (code) {
                  // _onOtpCallBack(code,false);
                  setState(() {});
                },
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecoveryScreen(),
                    ),
                  );
                },
                child: Text(
                  "Verify",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(55),
                  backgroundColor: Color(0xFFDB3022),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

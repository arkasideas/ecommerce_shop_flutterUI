import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _RecoveryScreenState();
}

class _RecoveryScreenState extends State<RecoveryScreen> {
  bool clrButton = false;
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),
              
              SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                onChanged: (val) {
                  if (val != "") {
                    setState(() {
                      
                    });
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Reset Code",
                  prefixIcon: Icon(Icons.numbers),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                onChanged: (val) {
                  if (val != "") {
                    setState(() {
                      
                    });
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "New Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        
                      });
                    },
                    child: Icon(
                      Icons.remove_red_eye,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: emailController,
                onChanged: (val) {
                  if (val != "") {
                    setState(() {
                      
                    });
                  }
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Confirm Password",
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        
                      });
                    },
                    child: Icon(
                      Icons.remove_red_eye,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => HomeScreen(),
                  //   ),
                  // );
                },
                child: Text(
                  "Reset Password",
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

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  // const HomeScreen({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.mail),
                    labelText: "Email Address",
                    border: OutlineInputBorder(),
                  ),
                  onFieldSubmitted: (newValue) {
                    print(newValue);
                  },
                ),
                SizedBox(height: 15),
                TextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                  onFieldSubmitted: (newValue) {
                    print(newValue);
                  },
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {print("UNSUPPORTED YET");},
                      child: Text("Register Now"),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

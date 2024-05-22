
import 'package:flutter/material.dart';
import 'package:mittens/pages/home/index.dart';
import 'package:mittens/service/grpc_service.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController usernamelController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(  
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // #TEXTFIELD USERNAME
            Container(
              color: Colors.white,
              height: 45,
              child: TextFormField(
                controller: usernamelController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), 
                    labelText: "Username",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Username';
                  }
                  return null;
                },
              ),
            ),

            // #PADDING TOP
            const SizedBox(height: 25,),

            // #TEXTFIELD PASSWORD
            Container(
              color: Colors.white,
              height: 45,
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), 
                    labelText: "Password"
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 25,),

            // #LOGIN BUTTON
            SizedBox(
              width: 330,
              height: 35,
              child: ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    // Navigate the user to the Home page

                    final process = await GrpcService().login(usernamelController.text, passwordController.text);

                    if (process.status) {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreen()));
                      usernamelController.clear();
                      passwordController.clear();
                      return;
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(process.message)),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Please fill input')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: const EdgeInsets.all(0),
                    backgroundColor: const Color.fromRGBO(32, 91, 125, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    )),
                child: Text(
                  'SIGN IN',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Colors.white70,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      letterSpacing: 0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
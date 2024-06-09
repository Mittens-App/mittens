import 'package:flutter/material.dart';
import 'package:mittens/components/notification.dart';
import 'package:mittens/pages/home/index.dart';
import 'package:mittens/protofiles/user.pb.dart';
import 'package:mittens/service/grpc_service.dart';
import 'package:mittens/service/session_service.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController usernamelController = TextEditingController();
  TextEditingController passwordController = TextEditingController();


  void login(text) async {
    String message = "Please fill input";
    if (_formKey.currentState!.validate()) {

      final process = await GrpcService().login(
          usernamelController.text, passwordController.text);

      if (process.status) {
        var response = process.data as LoginResponse;

        await SessionService()
            .save(response.username, response.token);
        // Navigate the user to the Home page
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(response.username)));

        usernamelController.clear();
        passwordController.clear();
        return Future(() => null);
      }
      message = process.message;
    }

    NotificationContent(context).setText(message).show();
  }

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
              color: Theme.of(context).colorScheme.background,
              height: 45,
              child: TextFormField(
                onFieldSubmitted: login,
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
            const SizedBox(
              height: 25,
            ),

            // #TEXTFIELD PASSWORD
            Container(
              color: Theme.of(context).colorScheme.background,
              height: 45,
              child: TextFormField(
                onFieldSubmitted: login,
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            // #LOGIN BUTTON
            SizedBox(
              width: 330,
              height: 35,
              child: ElevatedButton(
                onPressed: () => login(null),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: const EdgeInsets.all(0),
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    )),
                child: const Text(
                  'SIGN IN',
                  textAlign: TextAlign.center
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

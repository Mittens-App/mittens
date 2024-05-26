import 'package:flutter/material.dart';

class TagForm extends StatefulWidget {

  final AnimationController _controller;

  const TagForm(this._controller, {super.key});

  @override
  State<TagForm> createState() => _TagFormState();
}

class _TagFormState extends State<TagForm> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController colorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(  
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text("Create Tag"),

            // #TEXTFIELD TAG NAME
            Container(
              color: Theme.of(context).colorScheme.background,
              height: 35,
              child: TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), 
                    labelText: "Tag name",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Tag name';
                  }
                  return null;
                },
              ),
            ),

            // #PADDING TOP
            const SizedBox(height: 25,),

            // #TEXTFIELD DESC
            Container(
              color: Theme.of(context).colorScheme.background,
              height: 35,
              child: TextFormField(
                controller: descController,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), 
                    labelText: "Description"
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Description';
                  }
                  return null;
                },
              ),
            ),

            const SizedBox(height: 25,),

            // #TEXTFIELD COLOR
            Container(
              color: Theme.of(context).colorScheme.background,
              height: 35,
              child: TextFormField(
                controller: colorController,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), 
                    labelText: "COLOR",
                    labelStyle: TextStyle(
                      fontSize: 10
                    )
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Color';
                  }
                  return null;
                },
              ),
            ),

            const SizedBox(height: 25,),

            // #SAVE BUTTON
            SizedBox(
              width: 330,
              height: 35,
              child: ElevatedButton(
                onPressed: () async {
                  String message = "Please fill input";
                  if (_formKey.currentState!.validate()) {
                    // Navigate the user to the Home page

                    // final process = await GrpcService().login(usernamelController.text, passwordController.text);

                    // if (process.status) {
                    //   var response = process.data as LoginResponse;

                    //   await SessionService().save(response.username, response.token);
                    //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(response.username)));

                    //   usernamelController.clear();
                    //   passwordController.clear();
                      return;
                    }
                    // message = process.message;
                  // }
                  
                  // NotificationContent(context).setText(message).show();
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

            ElevatedButton(
              child: Text("Close"),
              onPressed: () {
                colorController.clear();
                nameController.clear();
                descController.clear();
                widget._controller.reverse();
              },
            ),
          ],
        ),
      ),
    );
  }
}
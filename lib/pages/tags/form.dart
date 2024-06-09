import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

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

  // create some values
  Color selectedColor = Color(0xffD98624);
  Color myColor = Color(0xffD98624);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Create Tag",
                textAlign: TextAlign.left,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),

            // #PADDING TOP
            const SizedBox(
              height: 15,
            ),

            // #TEXTFIELD TAG NAME
            Container(
              color: Theme.of(context).colorScheme.background,
              height: 45,
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
            const SizedBox(
              height: 25,
            ),

            // #TEXTFIELD DESC
            Container(
              color: Theme.of(context).colorScheme.background,
              height: 150,
              // alignment: Alignment.topLeft,
              child: TextFormField(
                minLines: null,
                maxLines: null,
                expands: true,
                controller: descController,
                obscureText: false,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Description"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Description';
                  }
                  return null;
                },
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // // #TEXTFIELD COLOR
                // Expanded(
                //   flex: 2,
                //   child: Container(
                //     // color: Theme.of(context).colorScheme.background,
                //     color: currentColor,
                //     height: 45,
                //     child: TextFormField(
                //       controller: colorController,
                //       obscureText: true,
                //       decoration: InputDecoration(
                //           border: OutlineInputBorder(),
                //           labelText: "COLOR",
                //           labelStyle: TextStyle(fontSize: 10)),
                //       validator: (value) {
                //         if (value == null || value.isEmpty) {
                //           return 'Please enter your Color';
                //         }
                //         return null;
                //       },
                //     ),
                //   ),
                // ),

                // #BOX COLOR
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Color",
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: myColor),
                        height: 30,
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  width: 10,
                ),

                // #BUTTON PICK COLOR
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Pick a color!'),
                              content: SingleChildScrollView(
                                child: ColorPicker(
                                  pickerColor: selectedColor, //default color
                                  onColorChanged: (Color color) {
                                    //on color picked
                                    setState(() {
                                      selectedColor = color;
                                    });
                                  },
                                ),
                              ),
                              actions: <Widget>[
                                ElevatedButton(
                                  child: const Text('Got it'),
                                  onPressed: () {
                                    setState(
                                        () => myColor = selectedColor);
                                    Navigator.of(context)
                                        .pop(); //dismiss the color picker
                                  },
                                ),
                              ],
                            );
                          });
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Text(
                      "Change Color",
                      textAlign: TextAlign.center,
                      // style: TextStyle(fontSize: 10),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),

              ],
            ),

            BlockPicker(

              pickerColor: Colors.black, 
              onColorChanged: (c) {},
              availableColors: [
                Colors.black,
                Colors.red,
                Colors.purple,
                Colors.blue,
                Colors.orange,
                Colors.yellow.shade700,
                Colors.green,
                Colors.grey,
                Colors.brown
              ],
            ),
            // const SizedBox(
            //   height: 25,
            // ),

            const Spacer(),
            // #SAVE BUTTON
            SizedBox(
              width: 330,
              height: 35,
              child: ElevatedButton(
                onPressed: () async {
                  // String message = "Please fill input";
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
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}

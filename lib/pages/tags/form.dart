import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:mittens/components/notification.dart';
import 'package:mittens/service/grpc_service.dart';
import 'package:mittens/service/session_service.dart';

class TagForm extends StatefulWidget {
  final AnimationController? controller;
  int? id;
  String? name;
  String? desc;
  Color? color;

  TagForm({super.key, this.name, this.controller, this.id, this.desc, this.color});

  @override
  State<TagForm> createState() => _TagFormState();
}

class _TagFormState extends State<TagForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController descController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.name ??  "";
    descController.text = widget.desc ?? "";

    widget.controller!.addListener(() {
      nameController.text = widget.name ?? "";
      descController.text = widget.desc ?? "";
    });
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
            // #HEADER
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
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: "Tag name",
                    labelStyle: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white70
                            : Colors.black)),
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
                textAlignVertical: TextAlignVertical.top,
                minLines: null,
                maxLines: null,
                expands: true,
                controller: descController,
                obscureText: false,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: "Description",
                    alignLabelWithHint: true,
                    labelStyle: TextStyle(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white70
                            : Colors.black)),
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
                // #BOX COLOR
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Selected Color",
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  width: 10,
                ),
              ],
            ),

            BlockPicker(
              // rework offset
              itemBuilder: (color, isCurrentColor, changeColor) {
                return Container(
                  margin: const EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                    boxShadow: [BoxShadow(color: color.withOpacity(0.8))],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: changeColor,
                      borderRadius: BorderRadius.circular(50),
                      child: AnimatedOpacity(
                        duration: const Duration(milliseconds: 210),
                        opacity: widget.color != null
                            ? (widget.color?.value == color.value)
                                ? 1
                                : 0
                            : 0,
                        child: const Icon(
                          Icons.done,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                );
              },
              pickerColor: widget.color,
              onColorChanged: (color) {
                setState(() {
                  widget.color = color;
                });
              },
              availableColors: [
                Colors.black,
                Colors.red,
                Colors.purple,
                Colors.blue,
                Colors.orange.shade600,
                Colors.yellow.shade800,
                Colors.green,
                Colors.grey,
                Colors.brown,
                Colors.cyan.shade800,
                Colors.indigo.shade600,
                Colors.lightGreen.shade700
              ],
            ),

            const Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // #DELETE BUTTON
                widget.id != null && widget.id! > 0 ? Container(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    onPressed: () async {
                      final (_, token!) = await SessionService().get();
                      final process = await GrpcService().setToken(token).deleteTag(
                        widget.id!
                      );

                      if (!process.status) {
                        NotificationContent(context).setText(process.message).show();
                        return;
                      }

                      closeModal();
                    }, 
                    icon: const Icon(Icons.delete_outline)
                  ),
                ): const SizedBox(),

                const Spacer(),

                // #CANCEL BUTTON
                SizedBox(
                  width: 80,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: closeModal,
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: const EdgeInsets.all(0),
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                            side: BorderSide(
                                color:
                                    Theme.of(context).colorScheme.secondary))),
                    child: Text(
                      'Cancel',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          letterSpacing: 0),
                    ),
                  ),
                ),

                const SizedBox(
                  width: 15,
                ),

                // #SAVE BUTTON
                SizedBox(
                  width: 75,
                  height: 35,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }
                      final (_, token!) = await SessionService().get();
                      final process = await GrpcService().setToken(token).saveOrUpdateTag(
                        widget.id ?? 0,
                        nameController.text,
                        descController.text,
                        widget.color != null ? widget.color!.value.toRadixString(16) : ""

                      );

                      if (!process.status) {
                        NotificationContent(context).setText(process.message).show();
                        return;
                      }

                      closeModal();
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size.zero,
                        padding: const EdgeInsets.all(0),
                        backgroundColor: const Color.fromRGBO(32, 91, 125, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        )),
                    child: Text(
                      'Save',
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

            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  void closeModal() {
    nameController.clear();
    descController.clear();
    widget.controller!.reverse();
  }
}

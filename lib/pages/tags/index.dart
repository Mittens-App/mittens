import 'package:flutter/material.dart';
import 'package:mittens/constant.dart';
import 'package:mittens/components/header.dart';
import 'package:mittens/pages/tags/form.dart';
import 'package:mittens/pages/tags/table.dart';

class TagsPage extends StatefulWidget {
  const TagsPage({super.key});

  @override
  State<TagsPage> createState() => _TagsPageState();
}

class _TagsPageState extends State<TagsPage>
    with SingleTickerProviderStateMixin {
  final String _header = 'TAGS';

  late Animation<Offset> _offsetAnimation;

  late AnimationController _controller;
  // late Color _selectedColor;
  Color? _selectedColor;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 200));

    _offsetAnimation = Tween<Offset>(begin: Offset(1, 0.0), end: Offset(0, 0.0))
        // .animate(_controller);
        .animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));
  }

  void _setColor(Color? color) {
    setState(() {
      _selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Title(
      color: Colors.white,
      title: Constants().titleFormat(_header.toLowerCase()),
      child: Expanded(
        child: Stack(children: [
          Column(
            children: [
              // #Header Content
              HeaderContent(_header),

              LinearProgressIndicator(
                backgroundColor: Colors.transparent,
                color: Theme.of(context).colorScheme.primary,
                minHeight: 3,
              ),
              // #PAGINATED DATA TABLE
              TagTable(_selectedColor, _controller, _setColor)
            ],
          ),

          // #ADD BUTTON
          Container(
            padding: const EdgeInsets.all(15),
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
                shape: const CircleBorder(),
                backgroundColor: Theme.of(context).colorScheme.secondary,
                child: Icon(
                  Icons.add,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onPressed: () {
                  setState(() {
                    _controller.forward();
                  });
                }),
          ),

          // #DETAIL ANIMATION
          Container(
            alignment: Alignment.centerRight, // CAREFUL!
            child: SlideTransition(
              position: _offsetAnimation,

              // #DETAIL BOX CONTENT
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Theme.of(context).colorScheme.primary
                        : Colors.white,
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.5),
                          offset: Offset(2, 5),
                          blurRadius: 5)
                    ]),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width > 640
                    ? 450
                    : MediaQuery.of(context).size.width,
                child: TagForm(_controller, _selectedColor),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

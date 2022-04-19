import 'package:flutter/material.dart';

class LinksText extends StatefulWidget {

  final String text;
  final Function? onPressed;
  const LinksText({
    Key? key, 
    required this.text,
    this.onPressed,


    }) : super(key: key);

  @override
  State<LinksText> createState() => _LinksTextState();
}

class _LinksTextState extends State<LinksText> {
  bool isHover = false;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if( widget.onPressed != null ) widget.onPressed!();
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: ( _ ) => setState(() => isHover = true),
        onExit: ( _ ) => setState(() => isHover = false), 
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Text(
            widget.text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              decoration: isHover? TextDecoration.underline : TextDecoration.none,
            ),
          )
      
        ),
      ),
    );
  }
}
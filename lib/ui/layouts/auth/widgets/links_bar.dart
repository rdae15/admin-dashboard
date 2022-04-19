// ignore_for_file: sized_box_for_whitespace, use_key_in_widget_constructors, avoid_print

import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:flutter/material.dart';


class LinksBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

  final size = MediaQuery.of(context).size;

    return Container(
      color: Colors.black,
      height: (size.width > 1000 ) ? size.height * 0.07 : null,
      child:  Wrap(
        alignment: WrapAlignment.center,
        children:  const [
          LinksText( text: 'About'),
          LinksText( text: 'Help Center'),
          LinksText( text: 'Terms of Service'),
          LinksText( text: 'Privacy Policy'),
          LinksText( text: 'Cookie Policy'),
          LinksText( text: 'Ads Info'),
          LinksText( text: 'Blog'),
          LinksText( text: 'Status'),
          LinksText( text: 'Careers'),
          LinksText( text: 'Brand Resources'),
          LinksText( text: 'Advertising'),
          LinksText( text: 'Marketing'),
        ],
      )

    );
  }
}
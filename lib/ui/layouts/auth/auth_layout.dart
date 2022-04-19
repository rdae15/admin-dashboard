// ignore_for_file: unused_element, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:admin_dashboard/ui/layouts/auth/widgets/background_twitter.dart';
import 'package:admin_dashboard/ui/layouts/auth/widgets/custom_title.dart';
import 'package:admin_dashboard/ui/layouts/auth/widgets/links_bar.dart';
import 'package:admin_dashboard/ui/views/login_view.dart';
import 'package:flutter/material.dart';

class AuthLayout extends StatelessWidget {

  final Widget child;

  const AuthLayout({
    Key? key, 
    required this.child}) : super(key: key); 

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return  Scaffold(
      body: Scrollbar(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children: [
      
            ( size.width > 1000 )
               ? _DesktopBody(child: child)
               : const _MobileBody(),
      
            LinksBar()
      
      
          ],
        ),
      )

    );
  }
}


class _MobileBody extends StatelessWidget {
  const _MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox( height: 20),
          const CustomTitle(),
          Container(
            width: double.infinity,
            height: 420,
            child: LoginView(),
          ),
          Container(
            width: double.infinity,
            height: 400,
            child: BackgroundTwitter(),
          )
        ],
      ),
    );
  }
}


class _DesktopBody extends StatelessWidget {

  final Widget child;

  const _DesktopBody({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.95,
      color: Colors.red,
      child: Row(
        children: [

          // twitter background 
          BackgroundTwitter(),
          // View Container 
          Container(
            width: 600,
            height: double.infinity,
            color: Colors.black,
            child: Column(
              children:  [
                const CustomTitle(),
                const SizedBox( height: 50),
                Expanded(child: LoginView()) 
              
              ],
            ),
          )
        ],
      ),
    );
  }
}
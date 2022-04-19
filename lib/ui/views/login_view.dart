import 'package:admin_dashboard/ui/buttons/custom_outlined_button.dart';
import 'package:admin_dashboard/ui/buttons/link_text.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LoginView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      margin: const EdgeInsets.only( top: 100),
      padding: const EdgeInsets.symmetric( horizontal: 20),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints( maxWidth: 370 ),
          child: Form(
            child: Column(
              children: [
                //email
                TextFormField(
                  style: const TextStyle( color: Colors.white),
                  decoration: buildInputDecoration(
                    hint: 'Ingrese su correo',
                    label: 'Email',
                    icon: Icons.email_outlined
                  ),
                  //password
                ),
                const SizedBox(height: 20,),
                TextFormField(
                  obscureText: true,
                  style: const TextStyle( color: Colors.white),
                  decoration: buildInputDecoration(
                    hint: '*********',
                    label: 'Contraseña',
                    icon: Icons.lock_outline_rounded,
                  ),
                ),

                const SizedBox( height: 20),

                CustomOutlinedButton(
                  OnPressed: (){}, 
                  text: 'Ingresar'
                  ),

                
                const SizedBox( height: 20 ),
                LinksText(
                  text: 'Nueva cuenta',
                  onPressed: (){

                  },
                )
                
              ],
            )
          ),
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration({
    required String hint,
    required String label,
    required IconData icon,
  }) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white.withOpacity(0.3))
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white.withOpacity(0.3))
      ),
      hintText: hint,
      labelText: label,
      prefixIcon: Icon(icon, color: Colors.grey),
      hintStyle: const TextStyle(color: Colors.grey),
      labelStyle: const TextStyle( color: Colors.grey)

    );

  }
}
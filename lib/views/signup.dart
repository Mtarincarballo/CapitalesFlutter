import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloflutter/views/signing.dart';

import '../widgets/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  late String nombre, apellidos, email, password;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: appBar(context),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Form(
        key : _formKey,
        child: Container(
          padding:  EdgeInsets.symmetric(horizontal: 49),
          color: Colors.amber,
          child: Column(
            children: [
              const Spacer(),
              TextFormField(
                validator: (val){val != null? "Introduce tu nombre" : null;},
                decoration: const InputDecoration(
                    hintText: "Nombre"
                ),
                onChanged: (val){
                  nombre = val;
                },
              ),
              const SizedBox(height: 6,),
              TextFormField(
                validator: (val){val != null? "Introduce tus apellidos" : null;},
                decoration: const InputDecoration(
                    hintText: "apellidos"
                ),
                onChanged: (val){
                  apellidos = val;
                },
              ),
              const SizedBox(height: 6,),
              TextFormField(
                validator: (val){val != null? "Introduce un email válido" : null;},
                decoration: const InputDecoration(
                    hintText: "Email del safa"
                ),
                onChanged: (val){
                  email = val;
                },
              ),
              const SizedBox(height: 6,),
              TextFormField(
                validator: (val){val != null? "Introduce una contraseña válida" : null;},
                decoration: const InputDecoration(
                    hintText: "Contraseña"
                ),
                onChanged: (val){
                  password = val;
                },

              ),

              const SizedBox(height: 100,),
              Row(children: [const Text("¿Ya tienes una cuenta? ",
                style: TextStyle(color: Colors.white, letterSpacing: 2, fontSize: 14),),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>const SignIn()));
                  },
                  child: const Text("Inicia sesión",
                      style: TextStyle(color: Colors.black87, fontSize: 14,decoration: TextDecoration.underline)),
                )

              ],),


              const SizedBox(height: 6,),

              GestureDetector(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>const SignIn()));
                },
                child: Container(

                  height: 50,
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width -208,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Text("INICIAR SESIÓN", style: TextStyle
                    (color: Colors.white),),
                ),
              ),

              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}

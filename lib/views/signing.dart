import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:helloflutter/views/signup.dart';
import 'package:helloflutter/widgets/widgets.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);


  @override
  _SignInState createState () => _SignInState();
}

class _SignInState extends State<SignIn>{
  final _formKey = GlobalKey<FormState>();
  late String email, password;
  @override
  Widget build(BuildContext context){
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
          padding: const EdgeInsets.symmetric(horizontal: 49),
          color: Colors.amber,
          child: Column(
            children: [
               Spacer(),
              TextFormField(
                validator: (val){val != null? "Introduce un email válido" : null;},
                decoration:  const InputDecoration(
                  hintText: "Email del safa"
                ),
                onChanged: (val){
                  email = val;
                },
              ),
               const SizedBox(height: 6,),
              TextFormField(
                validator: (val){val != null? "Introduce una contraseña válida" : null;},
                decoration:  const InputDecoration(
                    hintText: "Contraseña"
                ),
                onChanged: (val){
                  password = val;
                },

              ),

               const SizedBox(height: 100,),
              Row(children:  [const Text("¿No está aún registrado? ",
              style: TextStyle(color: Colors.white, letterSpacing: 2, fontSize: 14),),
                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>const SignUp()));
                  },
                  child: const Text("Regístrese",
                    style: TextStyle(color: Colors.black87, fontSize: 14,decoration: TextDecoration.underline)),
                )

              ],),


              const SizedBox(height: 6,),

              Container(

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

              const SizedBox(height: 10,),
            ],
          ),
          ),
       ),
      );

  }
}
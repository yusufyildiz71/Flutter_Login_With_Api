import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> GlobalFormKey = new GlobalKey<FormState>();
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    margin: EdgeInsets.symmetric(vertical: 85, horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue.shade100,
                              offset: Offset(0, 10),
                              blurRadius: 20)
                        ]),
                    child: Form(
                      key: GlobalFormKey,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "GİRİŞ",
                            style:
                                TextStyle(color: Colors.orange, fontSize: 30),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          new TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            //onSaved: ,
                            validator: (input) => !input!.contains("@")
                                ? "Geçersiz E-mail !"
                                : null,
                            decoration: new InputDecoration(
                                hintText: "E-mail",
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.blue.shade100)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.blue)),
                                prefixIcon: Icon(Icons.email,color: Colors.blue,)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          new TextFormField(
                            keyboardType: TextInputType.text,
                            //onSaved: ,
                            validator: (input) => input!.length > 3
                                ? "Şifre 3 haneden büyük olmalı !"
                                : null,
                            obscureText: hidePassword,
                            decoration: new InputDecoration(
                              hintText: "Şifre",
                              enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blue.shade100)),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)),
                              prefixIcon: Icon(Icons.lock,color: Colors.blue,),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    hidePassword = !hidePassword;
                                  });
                                },
                                //color: Colors.blue.shade100,
                                icon: Icon(hidePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          FlatButton(
                            onPressed: () {},
                            padding: EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 80,
                            ),
                            child: Text("Giriş",style: TextStyle(color: Colors.white),),
                            color: Colors.blue,
                            shape: StadiumBorder(),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

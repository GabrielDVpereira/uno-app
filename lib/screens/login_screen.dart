import 'package:flutter/material.dart';
import 'package:frontend/widgets/baseAuth_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseAuthScreen(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'lib/assets/images/logo.png',
            height: 130,
          ),
          SizedBox(height: 50),
          TextFormField(
              decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Email',
          )),
          SizedBox(height: 10),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Senha',
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {},
                child: Text(
                  "Entrar",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Theme.of(context).primaryColor),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                onPressed: () {},
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'lib/assets/images/google.png',
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Google",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                color: Theme.of(context).accentColor),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              'Registre-se',
              style:
                  TextStyle(fontSize: 20, decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }
}

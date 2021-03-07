import 'package:flutter/material.dart';
import 'package:frontend/widgets/baseAuth_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseAuthScreen(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nova conta",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 30),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Senha',
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Confirmar senha',
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
                  "Registrar-se",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                padding: EdgeInsets.symmetric(vertical: 10),
                color: Theme.of(context).primaryColor),
          ),
          Align(
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'Voltar',
                style: TextStyle(
                    fontSize: 20, decoration: TextDecoration.underline),
              ),
            ),
          )
        ],
      ),
    );
  }
}

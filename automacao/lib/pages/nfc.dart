import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tectoyexemplo/Utils/constants.dart';
import 'package:tectoyexemplo/Widgets/appbar.dart';
import 'package:tectoyexemplo/plugin/nfcsdk.dart';

class Nfc extends StatefulWidget {
  final String title;

  const Nfc({Key? key, required this.title}) : super(key: key);

  @override
  _NfcState createState() => _NfcState();
}

Nfcsdk nfc = new Nfcsdk();

class _NfcState extends State<Nfc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(widget.title, false),
      backgroundColor: Constants.background,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Column(
            children: [
              Container(
                height: 50.0,
                width: 1000.0,
                child: TextField(
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 20.0, color: Colors.white),
                    hintText: "Digite o Texto a Gravar",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                color: Constants.red,
                height: 50.0,
                width: 1000.0,
                child: TextButton(
                    child: const Text("Gravar No Cartão"),
                    style: TextButton.styleFrom(primary: Constants.white),
                    onPressed: () {}),
              ),
              SizedBox(height: 10.0),
              Container(
                color: Constants.red,
                height: 50.0,
                width: 1000.0,
                child: TextButton(
                    child: const Text("Ler Cartão"),
                    style: TextButton.styleFrom(primary: Constants.white),
                    onPressed: () {
                      Nfcsdk.ler();
                    }),
              ),
              SizedBox(height: 10.0),
              Container(
                color: Constants.red,
                height: 50.0,
                width: 1000.0,
                child: TextButton(
                    child: const Text("Formatar Cartão"),
                    style: TextButton.styleFrom(primary: Constants.white),
                    onPressed: () {}),
              ),
              SizedBox(height: 10.0),
              Container(
                color: Constants.red,
                height: 50.0,
                width: 1000.0,
                child: TextButton(
                    child: const Text("Leitura/Gravação"),
                    style: TextButton.styleFrom(primary: Constants.white),
                    onPressed: () {}),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

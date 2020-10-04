import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CardNoticia extends StatelessWidget {
  final String titulo;
  final String texto;
  final String imagemUrl;
  final String linkUrl;

  CardNoticia(this.titulo, this.texto, this.imagemUrl, this.linkUrl);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new Card(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              children: [
                Container(
                  height: 150,
                  width: 400,
                  child: Image.network(this.imagemUrl, fit: BoxFit.fill),
                ),
                Container(
                  child: Text(this.titulo, style: TextStyle(fontSize: 24)),
                ),
                Container(
                  child: Text(this.texto, style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ),
        ),
        RaisedButton(
          onPressed: () => launch(this.linkUrl),
          color: Color(0xfffc7a00),
          child: Text('Acessar', style: TextStyle(color: Colors.white),),
        )
      ],
    );
  }
}

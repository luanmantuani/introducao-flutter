import 'package:flutter/material.dart';
import 'package:projeto/entity/noticia.entity.dart';
import 'package:projeto/widgets/card_noticia.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeSrcreen extends StatelessWidget {
  final List<NoticiaEntity> listaDeNoticias;

  HomeSrcreen(this.listaDeNoticias);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color(0xff1b3561),
          padding: EdgeInsets.only(top: 40, left: 10),
          child: Column(
            children: [
              RaisedButton(
                onPressed: () => launch('https://www.youtube.com/watch?v=Rp6Aggnk0cg&feature=youtu.be&ab_channel=AlissonZubcov'),
                child: Text('Tutorial'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff1b3561),
        title: Row(
          children: [
            Expanded(
              child: Container(
                height: 30,
                color: Colors.white,
                child: Image.network(
                  'https://www.fema.edu.br/images/Fema_marca.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text('Curso de Flutter'),
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff1b3561),Color(0xff000000),Color(0xfffc7a00),]
          )
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: this.listaDeNoticias.map(
                    (e) => CardNoticia(e.getTitulo, e.getTexto, e.getImagemUrl, e.getLinkUrl)
                  ).toList(),
                ),
              )
            ),
            Container(
              width: 350,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: RaisedButton(
                color: Color(0xff1b3561),
                onPressed: () => launch('http://fema.edu.br/'),
                child: Text(
                  'Acessar site',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}

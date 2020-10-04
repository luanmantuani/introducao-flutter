import 'package:flutter/material.dart';
import 'package:projeto/entity/noticia.entity.dart';
import 'package:projeto/screens/home_screen.dart';
import 'package:projeto/widgets/card_noticia.dart';

void main() {
  runApp(MeuAplicativo());
}

class MeuAplicativo extends StatefulWidget {
  @override
  _MeuAplicativoState createState() => _MeuAplicativoState();
}

class _MeuAplicativoState extends State<MeuAplicativo> {
  List<NoticiaEntity> listaDeNoticias = new List<NoticiaEntity>();

  @override
  void initState() {
    super.initState();
    this.listaDeNoticias.add(NoticiaEntity.padrao(
      'CONCURSO DE FOTOGRAFIA', 
      'Resultado do 3º Concurso de Fotografia', 
      'http://fema.edu.br/images/fema/Noticias/Post3concursoResultado.jpg', 
      'http://fema.edu.br/index.php/noticias-pagina/1767-fema-divulga-vencedores-do-concurso-de-fotografia-3'
    ));
    this.listaDeNoticias.add(NoticiaEntity.padrao(
      'XIII FÓRUM CIENTÍFICO', 
      'FEMA realiza XIII Fórum Científico em', 
      'http://fema.edu.br/images/fema/Noticias/FEMAforum-cientifico-post-1.jpg', 
      'http://fema.edu.br/index.php/noticias-pagina/1765-fema-realiza-xiii-forum-cientifico-em-outubro'
    ));
    this.listaDeNoticias.add(NoticiaEntity.padrao(
      'XXI SEMANA JURÍDICA', 
      'FEMA realiza XXI edição da Semana', 
      'http://fema.edu.br/images/fema/Noticias/banner_noticia.jpg', 
      'http://fema.edu.br/index.php/noticias-pagina/1763-fema-realiza-xxi-semana-juridica'
    ));
    this.listaDeNoticias.add(NoticiaEntity.padrao(
      'SEMACOM 2020', 
      'FEMA comemora 20 anos de Publicidade', 
      'http://fema.edu.br/images/fema/Noticias/semacom-not%C3%ADcia.jpg', 
      'http://fema.edu.br/index.php/noticias-pagina/1764-fema-comemora-20-anos-de-publicidade'
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: HomeSrcreen(this.listaDeNoticias));
  }
}

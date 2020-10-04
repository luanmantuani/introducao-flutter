class NoticiaEntity {
  String _titulo;
  String _texto;
  String _imagemUrl;
  String _linkUrl;

  NoticiaEntity();

  NoticiaEntity.padrao(
    String titulo, String texto, String imagemUrl, String linkUrl,
  ){
    this._titulo = titulo;
    this._texto = texto;
    this._imagemUrl = imagemUrl;
    this._linkUrl = linkUrl;
  }

  String get getTitulo => this._titulo;
  set setTitulo(String titulo) => this._titulo = titulo;
  
  String get getTexto => this._texto;
  set setTexto(String texto) => this._texto = texto;
  
  String get getImagemUrl => this._imagemUrl;
  set setImagemUrl(String imagemUrl) => this._imagemUrl = imagemUrl;
  
  String get getLinkUrl => this._linkUrl;
  set setLinkUrl(String linkUrl) => this._linkUrl = linkUrl;
  
}
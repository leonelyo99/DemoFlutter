import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen(),
            _crearValoracion(),
            _crearAcciones(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://www.pandotrip.com/wp-content/uploads/2016/07/li-Photo-by-Santo-980x572.jpg'),
      height: 240.0,
      fit: BoxFit.cover
    );
  }

  Widget _crearValoracion() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Lago del sueño', style: estiloTitulo),
                SizedBox(height: 7.0),
                Text('Un paraiso terrenal pero tremendo paraiso terrenal',
                    style: estiloSubtitulo)
              ],
            )),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE')
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  Widget _crearTexto() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum maximus, dolor in aliquet bibendum, nisi enim eleifend ex, at ullamcorper arcu mi quis risus. Morbi vitae iaculis lorem. Ut sed finibus metus. Cras quis suscipit est, ut mollis risus. Etiam aliquam velit at augue pulvinar volutpat. Ut a pellentesque leo. Phasellus id pulvinar elit. Aenean purus sapien, tincidunt quis urna ac, luctus iaculis est. In non aliquet nisl. Cras et congue purus. Vivamus sem metus, eleifend in auctor et, auctor a est. In risus urna, aliquam vitae luctus et, scelerisque vel risus. Curabitur porta quam sit amet fermentum auctor. Mauris in justo sed est tincidunt aliquam volutpat non diam.',
        textAlign: TextAlign.justify,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estilotexto = new TextStyle(fontSize: 25);
  int _conteo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de pulsos', style: _estilotexto),
            Text('$_conteo', style: _estilotexto ),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(onPressed: _sustraer, child: Icon(Icons.remove)),
        Expanded(child: SizedBox(width: 5)),
        FloatingActionButton(onPressed: _reset, child: Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox(width: 5)),
        FloatingActionButton(onPressed: _sumar, child: Icon(Icons.add))
      ],
    );
  }

  void _sumar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() =>_conteo--);
  }

  void _reset () {
    setState(() => _conteo = 0);
  }
}
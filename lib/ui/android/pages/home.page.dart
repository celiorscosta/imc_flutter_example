import 'package:flutter/material.dart';
import 'package:imc_flutter_example/blocs/imc.bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var bloc = ImcBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cálculo de IMC'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Altura (cm)',
              ),
              controller: bloc.heightCtrl,
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Peso (kg)',
              ),
              controller: bloc.weightCtrl,
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              bloc.result,
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: FlatButton(
              color: Theme.of(context).primaryColor,
              child: Text(
                'Calcular',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  bloc.calculate();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

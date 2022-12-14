import 'package:flutter/material.dart';

class TenScreen extends SearchDelegate {

  /*  TEN SCREEN
      En esta pagina se encuentra el buscador
  */


  @override
  String? get searchFieldLabel => '¿Qué buscas?';

@override
  TextStyle? get searchFieldStyle => TextStyle(color: Colors.black26);


  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
        IconButton(
          icon: Icon( Icons.clear ),
          onPressed: () => query = '',
        )
      ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon( Icons.arrow_back, color: Colors.green ),
        onPressed: () {
          Navigator.pushReplacementNamed(context, 'five');
        },
      );
    }

  @override
  Widget buildResults(BuildContext context) {
    return Text('buildResults');
  }
  
  Widget _emptyContainer() {
    return Container(
        child: Center(
          child: Image.asset('assets/back_buscador.png'),
        ),
    );
  }
    

  @override
  Widget buildSuggestions(BuildContext context) {
    //TODO: implementar buscador
    return _emptyContainer();
  }

}
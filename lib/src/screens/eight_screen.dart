import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class EightScreen extends StatelessWidget {

  /*  EIGHT SCREEN
      En esta pagina se encuentra los productos de cocina clasificados por tipos
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ollas'),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.green),
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, 'seven'),
            );
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              dragStartBehavior: DragStartBehavior.down,
              children: [
                //TODO: añadir los productos separados por sectores
                _CardTable(),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CardTable extends StatelessWidget {
  const _CardTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Table(
          children: const [
            TableRow(children: [
              //TODO: CAMBIAR ELEMENTOS
              _SingleCard(
                  image:'https://www.mccain-foodservice.es/wp-content/uploads/2019/08/Inspiration_6255_Crispy_Chicken_Wings.jpg',
                  nombre: 'Alitas de pollo',
                  precio: '25€',
                  page: 'six'),
              _SingleCard(
                  image:'https://www.comedera.com/wp-content/uploads/2021/05/chuletas-de-cerdo-al-horno.jpg',
                  nombre: 'Chuleta de cerdo',
                  precio: '18€',
                  page: 'six'),
            ]),
            TableRow(children: [
              _SingleCard(
                  image:'https://st2.depositphotos.com/1020618/6765/i/450/depositphotos_67657295-stock-photo-japanese-seafood-sushi-set.jpg',
                  nombre: 'Lote sushi',
                  precio: '23€',
                  page: 'six'),
              _SingleCard(
                  image:'http://www.pecadosdereposteria.com/wp-content/uploads/2014/08/crema-queso-rambuesas-crocanti-istachos-pecados-reposteria-3.jpg',
                  nombre: 'Pastel de pistacho y frambuesas',
                  precio: '16€',
                  page: 'six'),
            ]),
            TableRow(children: [
              _SingleCard(
                  image:'https://www.hazteveg.com/img/recipes/full/201511/R24-25719.jpg',
                  nombre: 'Pasta al pesto',
                  precio: '15€',
                  page: 'six'),
              _SingleCard(
                  image:'https://www.verdurastabuenca.com/images/recetas/tabuenca_receta_salmon_con_verduras.jpg',
                  nombre: 'Salmón con verduras',
                  precio: '20€',
                  page: 'six'),
            ]),
            TableRow(children: [
              _SingleCard(
                  image:'https://t1.uc.ltmcdn.com/es/posts/2/5/7/como_hacer_una_ensalada_de_quinoa_33752_600_square.jpg',
                  nombre: 'Ensalada quinoa',
                  precio: '13€',
                  page: 'six'),
              _SingleCard(
                  image:'https://www.unileverfoodsolutions.es/dam/global-ufs/mcos/SPAIN/calcmenu/recipes/ES-recipes/general/hamburguesa-de-ternera-con-aguacate/main-header.jpg',
                  nombre: 'Hamburguesa completa',
                  precio: '20€',
                  page: 'six'),
            ])
          ],
        ),
      ),
    );
  }
}

class _SingleCard extends StatelessWidget {
  final String precio;
  final String nombre;
  final String image;
  final String page;

  const _SingleCard({
    Key? key,
    required this.precio,
    required this.nombre,
    required this.image, 
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(color: Colors.black12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FittedBox(
                child: Image.network(
                  this.image,
                  fit: BoxFit.cover,
                  width: 170,
                  height: 130,
                ),
              ),
              Container(
                width: 170,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),
                    Text(this.precio,
                        style: TextStyle(color: Colors.green, fontSize: 15)),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                        child: Text(this.nombre,
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                            textAlign: TextAlign.center)),
                  ],
                ),
              )
            ],
          ),
        ),
        onTap: () => Navigator.pushReplacementNamed(context, 'nine'),
      ),
    );
  }
}

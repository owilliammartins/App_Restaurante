import 'package:flutter/material.dart';
import 'package:app_restaurante/zoom_scaffold.dart';


// Criando nova tela no app
final Tela restauranteTela = new Tela(
  title: 'RESTAURANTES',
  background: new DecorationImage(
    image: new AssetImage('assets/wood_bk.jpg'),
    fit: BoxFit.cover,
  ),
  contentBuilder: (BuildContext context) {
    return new ListView(
    children: [
      new _RestauranteCard(
        headImageAssetPath: 'assets/eggs_in_skillet.jpg',
        icon: Icons.fastfood,
        iconBackgroundColor: Colors.orange,
        title: 'Restaurante Bom Bistrô',
        subtitle: 'Av. das Américas, 300, Cidade Nova',
        heartCount: 84,

      ),
      new _RestauranteCard(
        headImageAssetPath: 'assets/steak_on_cooktop.jpg',
        icon: Icons.local_dining,
        iconBackgroundColor: Colors.lightBlueAccent,
        title: 'Restaurante da Vovó',
        subtitle: 'Rua das Acácias, 120, Funcionários',
        heartCount: 33,


      ),
      new _RestauranteCard(
        headImageAssetPath: 'assets/spoons_of_spices.jpg',
        icon: Icons.fastfood,
        iconBackgroundColor: Colors.purpleAccent,
        title: 'Casa Serve Bem',
        subtitle: 'Av. Dom Pedro, 435, Centro',
        heartCount: 109,


      ),
    ], // children cards
  );
  }
);

class _RestauranteCard extends StatelessWidget {
  //_RestauranteCard({Key key}) : super(key: key);

  final String headImageAssetPath;
  final IconData icon;
  final Color iconBackgroundColor;
  final String title;
  final String subtitle;
  final int heartCount;

  _RestauranteCard({
    this.headImageAssetPath,
    this.icon,
    this.iconBackgroundColor,
    this.title,
    this.subtitle,
    this.heartCount,
  });

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.only(left: 10.0,right: 10.0, bottom: 10.0),
        child: new Card(
          elevation: 10.0,
          child: Column(
            children: [
              new Image.asset(
                headImageAssetPath,
                width: double.infinity,
                height: 150.0,
                fit: BoxFit.cover,
              ),
              new Row(
                children: [
                  new Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: new Container(
                      padding: const EdgeInsets.all(10.0),
                      decoration: new BoxDecoration(
                        color: iconBackgroundColor,
                        borderRadius: new BorderRadius.all(const Radius.circular(15.0))
                      ),
                      child: new Icon(
                        icon,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  
                  new Expanded(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Text(
                          title,
                          style: const TextStyle(
                            fontSize: 25.0,
                            fontFamily: 'mermaid'
                          ),
                        ),
                        new Text(
                          subtitle,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'bebas-neue',
                            letterSpacing: 1.0,
                            color: const Color(0xFFAAAAAA)
                          ),
                        ),
                      ],
                    ),
                  ),

                  new Container(
                    width: 2.0,
                    height: 70.0,
                    decoration: new BoxDecoration(
                      gradient: new LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white,
                          const Color(0xFFAAAAAA),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),

                  new Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: new Column(
                      children: [
                        new Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                        new Text(
                          '$heartCount',
                        ),
                      ],
                    )
                  ),
                ],
              )
            ], // children columns
          ),
        ),
    );
  }
}
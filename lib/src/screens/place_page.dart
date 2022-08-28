import 'package:flutter/material.dart';


class PlacePageScreen extends StatelessWidget {
  const PlacePageScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/img/landscape.jpeg')),
          const Title(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: const Text('Nullam interdum et ligula at ornare. Curabitur vehicula sem ac eros pharetra facilisis. Nulla elit justo, facilisis eu mattis ut, auctor non neque. Maecenas accumsan felis ipsum, id blandit eros consequat id. Vestibulum vitae pellentesque eros. Suspendisse congue in purus ut bibendum. Phasellus eget tincidunt justo.'),
          )
        ],
      )
   );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children:  [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Expanded(child: Text('Panteón Nacional de los Heroes y Oratorio de Ntra. Sra. de la Asunción', style: TextStyle(fontSize: 19))),

            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: size.width - 155),
              child: const Text('Panteón Nacional de los Heroes y Oratorio Nuestra Señora Santa María de la Asunción', style: TextStyle(fontSize: 19), textAlign: TextAlign.justify,))
            ],
          ),
          Expanded(child: Container()),
          const PlayButton(),
        ],
      ),
    );
  }
}

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FloatingActionButton(
      onPressed: (null),
      child: Icon(Icons.play_arrow),
    );
  }
}
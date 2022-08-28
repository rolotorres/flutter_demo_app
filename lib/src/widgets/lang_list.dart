import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/lang_model.dart';
import '../providers/lang_provider.dart';
import 'package:flutter_demo_app/src/screens/screens.dart';

class LangList extends StatelessWidget {
  const LangList({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final langProvider = Provider.of<LangProvider>(context, listen: false);
    final langs = <LangModel>[];

    return FutureBuilder(
      future: langProvider.loadLangs(), // <= exception occurs here
      initialData: langs,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if(!snapshot.hasData) return const CircularProgressIndicator();
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, i) => ListTile(
              leading: const CircleAvatar(backgroundImage: AssetImage('assets/img/us.webp')),
              title: Text(snapshot.data?.langs?? ''),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: (){
                final route = MaterialPageRoute(
                  builder: (context) => const ScanPageScreen()
                );
                Navigator.push(context, route);
              },
            ),
            // separatorBuilder: (_, __) => const Divider(),
          ),
        );
      },
    );
  }
}



    // return Container(
    //   margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
    //   child: ListView.separated(
    //     shrinkWrap: true,
    //     itemCount: langs,
    //     itemBuilder: (context, i) => ListTile(
    //       title: Text(options[i]),
    //       leading: const CircleAvatar(backgroundImage: AssetImage('assets/img/us.webp')),
    //       trailing: const Icon(Icons.arrow_forward_ios_outlined),
    //       onTap: (){
    //         final route = MaterialPageRoute(
    //           builder: (context) => const ScanPageScreen()
    //         );
    //         Navigator.push(context, route);
    //       },
    //     ),
    //     separatorBuilder: (_, __) => const Divider(),
    //   ),
    // );
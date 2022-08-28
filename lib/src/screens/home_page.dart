import 'package:flutter/material.dart';

// import 'package:flutter_demo_app/src/providers/lang_provider.dart';
// import 'package:flutter_demo_app/src/providers/content_provider.dart';
// import 'package:flutter_demo_app/src/providers/provider.dart';

import 'package:flutter_demo_app/src/widgets/widgets.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: const [
          Logo(),
          LangList()
        ]
      ),
    );
  }
}

// Container(
//         child: 
//           LangList(options: options)
//       ),

    // ContentProvider().getAllContents().then(print);
    // ContentProvider().getContentById('3SjYp7L').then((content) => debugPrint(content!.name));
    // LangProvider().getLangById(1).then((lang) => debugPrint(lang!.language));
    // LangProvider().getAllLangs().then((print));


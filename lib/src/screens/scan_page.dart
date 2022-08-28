import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

// import 'package:flutter_demo_app/src/screens/place_page.dart';

class ScanPageScreen extends StatelessWidget {
  const ScanPageScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: const Color(0xff011B54),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: const [
            Text('''
              1. Presione el botón "Escanear" para iniciar a viajar a través de la historia de nuestro país.
              ''')
            ],
          ),
      ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed:() async{
            String getScan = await FlutterBarcodeScanner.scanBarcode(
                                                    '#3D8BEF', 
                                                    'Cancelar', 
                                                    false, 
                                                    ScanMode.QR);

            // const getScan = 'https://senatur.gov.py';
            debugPrint(getScan);
        },
        icon: const Icon(Icons.filter_center_focus),
        label: const Text('Scan Me'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}


// final route = MaterialPageRoute(
//               builder: (context) => const PlacePageScreen()
//             );
//             Navigator.push(context, route);
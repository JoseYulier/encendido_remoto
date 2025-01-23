import 'package:encendido_remoto/views/components/buttons/custom_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Panel de Llenado '),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                width: 150,
                height: 300,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Tanque Elevado',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                width: 150,
                height: 300,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Cisterna',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Container(
            decoration: const BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            width: 300,
            height: 100,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Datos Turbina',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 30),
          CustomStatefulButton(text: 'Llenar', onPressed: () {}),
        ],
      ),
    );
  }
}

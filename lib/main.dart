import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'container_model.dart';
import 'configurator_section.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ContainerModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container Configurator'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [

              ConfiguratorSection(),
              SizedBox(height: 20),
              Container(
                width: context.watch<ContainerModel>().width,
                height: context.watch<ContainerModel>().height,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(context.watch<ContainerModel>().borderRadius),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

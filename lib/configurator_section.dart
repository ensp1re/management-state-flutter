import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'container_model.dart';  // Імпортуємо модель

class ConfiguratorSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: context.watch<ContainerModel>().width,
          min: 100,
          max: 400,
          onChanged: (newWidth) {
            context.read<ContainerModel>().setWidth(newWidth);
          },
          label: 'Width',
        ),
        Text('Width: ${context.watch<ContainerModel>().width.toStringAsFixed(1)}'),

        Slider(
          value: context.watch<ContainerModel>().height,
          min: 100,
          max: 400,
          onChanged: (newHeight) {
            context.read<ContainerModel>().setHeight(newHeight);
          },
          label: 'Height',
        ),
        Text('Height: ${context.watch<ContainerModel>().height.toStringAsFixed(1)}'),

        Slider(
          value: context.watch<ContainerModel>().borderRadius,
          min: 0,
          max: 50,
          onChanged: (newRadius) {
            context.read<ContainerModel>().setBorderRadius(newRadius);
          },
          label: 'Border Radius',
        ),
        Text('Border Radius: ${context.watch<ContainerModel>().borderRadius.toStringAsFixed(1)}'),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class MenuItem extends StatefulWidget {
  final String _name;
  final String _image;
  final double _cost;

  const MenuItem(this._name, this._image, this._cost, {super.key});

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 110,
          height: 110,
          child: Placeholder(),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(18, 0, 0, 0),
          child: Column(
            children: [
              Text(
                widget._name,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const Text(
                'Item Info',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('cost'),
                  SizedBox(
                    width: 30,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: null,
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: const Icon(
                        Icons.add,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

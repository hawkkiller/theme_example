import 'package:flutter/material.dart';

/// {@template components_screen}
/// ComponentsScreen widget
/// {@endtemplate}
class ComponentsScreen extends StatefulWidget {
  /// {@macro components_screen}
  const ComponentsScreen({super.key});

  @override
  State<ComponentsScreen> createState() => _ComponentsScreenState();
}

class _ComponentsScreenState extends State<ComponentsScreen> {
  var _changeableValue = false;
  var _sliderValue = 0.0;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 2,
          title: const Text("Components"),
        ),
        body: ListView(padding: const EdgeInsets.all(16), children: [
          Row(
            children: [
              const Text('Default checkbox'),
              Checkbox(
                value: _changeableValue,
                onChanged: (v) => setState(() {
                  _changeableValue = v!;
                }),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Text('Disabled checkbox'),
              Checkbox(
                value: _changeableValue,
                onChanged: null,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Text('Default radio'),
              Radio(
                value: true,
                groupValue: _changeableValue,
                onChanged: (v) {
                  setState(() {
                    _changeableValue = v!;
                  });
                },
              ),
              Radio(
                value: false,
                groupValue: _changeableValue,
                onChanged: (v) {
                  setState(() {
                    _changeableValue = v!;
                  });
                },
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Text('Disabled radio'),
              Radio(
                value: true,
                groupValue: _changeableValue,
                onChanged: null,
              ),
              Radio(
                value: false,
                groupValue: _changeableValue,
                onChanged: null,
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Text('Default switch'),
              Switch(
                value: _changeableValue,
                onChanged: (v) => setState(() {
                  _changeableValue = v;
                }),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Text('Disabled switch'),
              Switch(
                value: _changeableValue,
                onChanged: null,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Text('Default slider'),
              Expanded(
                child: Slider(
                  value: _sliderValue,
                  onChanged: (v) => setState(() {
                    _sliderValue = v;
                  }),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Text('Disabled slider'),
              Expanded(
                child: Slider(
                  value: _sliderValue,
                  onChanged: null,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Text('Default button'),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Button'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: const [
              Text('Disabled button'),
              SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: null,
                  child: Text('Button'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: const [
              Text('Default text field'),
              SizedBox(width: 16),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Text field',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: const [
              Text('Error text field'),
              SizedBox(width: 16),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Text field',
                    errorText: 'Error',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: const [
              Text('Disabled text field'),
              SizedBox(width: 16),
              Expanded(
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Text field',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Text('Date picker'),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: () async {
                    final date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    print(date);
                  },
                  child: const Text('Select date'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const Text('Time picker'),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: () async {
                    final time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );
                    print(time);
                  },
                  child: const Text('Select time'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ]),
      );
} // ComponentsScreen

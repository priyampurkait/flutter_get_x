import 'package:flutter/material.dart';
import 'package:flutter_get_x/controllers/counter_state.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  final CounterState _counterState = Get.find();

  @override
  Widget build(BuildContext context) {
    debugPrint('###### Details Page build method ######');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get X'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Count from first screen',
            ),
            GetX<CounterState>(
              init: CounterState(),
              builder: (_) {
                return Text(
                  '${_counterState.count}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _counterState.incriment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

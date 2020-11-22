import 'package:flutter/material.dart';
import 'package:flutter_get_x/controllers/counter_state.dart';
import 'package:flutter_get_x/views/details_page.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final CounterState _counterState = Get.put(CounterState());
  @override
  Widget build(BuildContext context) {
    debugPrint('###### Home Page build method ######');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get X'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
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
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => DetailsPage(),
                  ),
                );
              },
              child: const Text(
                'Go to Next Screen',
              ),
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

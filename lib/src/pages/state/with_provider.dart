import 'package:flutter/material.dart';
import 'package:flutter_getx/src/controller/count_with_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Provider", style: TextStyle(fontSize: 30)),
          Consumer<CountControllerWithProvider>(
            builder: (BuildContext context, value, Widget? child) {
              return Text("${value.count}");
            },
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<CountControllerWithProvider>(context, listen: false).increase();
            },
            child: Text("+"),
          ),
        ],
      ),
    );
  }
}

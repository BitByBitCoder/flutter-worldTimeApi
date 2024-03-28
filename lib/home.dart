import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rp_management/controller/worldtimecontroller.dart';
import 'package:intl/intl.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  String gettime(a) {
    String b = DateFormat.jm().format(DateTime.now());
    return b;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(controllProvider);

    return data.when(
        data: (data) => Scaffold(
              appBar: AppBar(),
              body: Text('${gettime(data.datetime)}'),
            ),
        error: (error, StackTrace) => Text(error.toString()),
        loading: () => Text('loading'));
  }
}

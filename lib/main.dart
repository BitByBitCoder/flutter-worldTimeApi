import 'dart:convert' as convert;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rp_management/home.dart';

//Providers
// final nameProvider = Provider<String>((ref) => 'he');
// final userProvider =
//     StateNotifierProvider<UserNotifire, User>((ref) => UserNotifire());

// final userFuture = FutureProvider((ref) async {
//   const url = 'https://jsonplaceholder.typicode.com/todos/1';
//   final response = await http.get(Uri.parse(url));
//   final decode = convert.jsonDecode(response.body);

//   print(decode.runtimeType);
//   return User.fromJson(decode);
// });
void main() {
  runApp(ProviderScope(child: Myapp()));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

// class Myapp extends ConsumerWidget {
//   Myapp({super.key});
//   void onSubmitted(WidgetRef ref, value) {
//     // ref.read(nameStateProvider.notifier).update((state) => value);
//   }

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // final user = ref.watch(userProvider);
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text(user.name),
//           ),
//           body: Column(
//             children: [
//               Text(user.age.toString()),
//               TextField(
//                   onSubmitted: (value) =>
//                       ref.read(userProvider.notifier).updateName(value)),
//               SizedBox(
//                 height: 10,
//               ),
//               TextField(
//                   keyboardType: TextInputType.number,
//                   onSubmitted: (value) => ref
//                       .read(userProvider.notifier)
//                       .updateAge(int.parse(value)))
//             ],
//           )),
//     );
//   }
// }

// class Myapp extends ConsumerWidget {
//   const Myapp({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final user = ref.watch(userFuture);
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('future'),
//         ),
//         body: user.when(
//             data: (data) {
//               return Text('hello');
//             },
//             error: (error, stackt) {
//               return Text('errr');
//             },
//             loading: () => Text('loading')),
//       ),
//     );
//   }
// }

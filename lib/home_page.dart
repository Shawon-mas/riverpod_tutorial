import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/provider_list.dart';


class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final name=ref.watch(ProviderList().hello);
    return Scaffold(
      body: Center(
        child: Text(name),
      ),
    );
  }
}

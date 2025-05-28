import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/provider_list.dart';

final counter=StateProvider<int>((ref)=> 0,);

class StateProviderPage extends ConsumerWidget {
  const StateProviderPage({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final count=ref.watch(counter);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            ref.invalidate(counter);
          }, icon: Icon(Icons.refresh))
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            ref.read(counter.notifier).update((state)=> state+1);
          },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text(count.toString(),style: TextStyle(
            fontSize: 30
        ),),
      ),
    );
  }
}

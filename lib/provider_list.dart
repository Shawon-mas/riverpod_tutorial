import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderList{
  final hello=Provider<String>((ref){
    return 'Hello Shawon';
  });

  final counter=StateProvider<int>((ref)=> 0,);
}
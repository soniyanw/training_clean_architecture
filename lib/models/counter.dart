import 'package:architecture/models/serializers.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'counter.g.dart';

abstract class Counter implements Built<Counter, CounterBuilder> {
  Counter._();
  factory Counter([void Function(CounterBuilder) updates]) = _$Counter;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(Counter.serializer, this)
        as Map<String, dynamic>;
  }

  static Counter fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Counter.serializer, json)!;
  }

  static Serializer<Counter> get serializer => _$counterSerializer;
  static void _initializeBuilder(CounterBuilder b) {
    b.counter = 0;
  }

  int? get counter;
}

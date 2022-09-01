// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Counter> _$counterSerializer = new _$CounterSerializer();

class _$CounterSerializer implements StructuredSerializer<Counter> {
  @override
  final Iterable<Type> types = const [Counter, _$Counter];
  @override
  final String wireName = 'Counter';

  @override
  Iterable<Object?> serialize(Serializers serializers, Counter object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.counter;
    if (value != null) {
      result
        ..add('counter')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Counter deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CounterBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'counter':
          result.counter = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$Counter extends Counter {
  @override
  final int? counter;

  factory _$Counter([void Function(CounterBuilder)? updates]) =>
      (new CounterBuilder()..update(updates))._build();

  _$Counter._({this.counter}) : super._();

  @override
  Counter rebuild(void Function(CounterBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CounterBuilder toBuilder() => new CounterBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Counter && counter == other.counter;
  }

  @override
  int get hashCode {
    return $jf($jc(0, counter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Counter')..add('counter', counter))
        .toString();
  }
}

class CounterBuilder implements Builder<Counter, CounterBuilder> {
  _$Counter? _$v;

  int? _counter;
  int? get counter => _$this._counter;
  set counter(int? counter) => _$this._counter = counter;

  CounterBuilder() {
    Counter._initializeBuilder(this);
  }

  CounterBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _counter = $v.counter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Counter other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Counter;
  }

  @override
  void update(void Function(CounterBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Counter build() => _build();

  _$Counter _build() {
    final _$result = _$v ?? new _$Counter._(counter: counter);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

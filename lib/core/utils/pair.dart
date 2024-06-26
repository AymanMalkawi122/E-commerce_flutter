
class Pair<A, B> {
  final A first;
  final B second;

  Pair(this.first, this.second);

  @override
  String toString() => 'Pair($first, $second)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pair<A, B> &&
        other.first == first &&
        other.second == second;
  }

  @override
  int get hashCode => first.hashCode ^ second.hashCode;
}

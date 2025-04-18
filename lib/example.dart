void main() {
  final list = ['a', 'b', 'c', 'd', 'e'];

  for (var i = 0; i < list.length; i++) {
    print('첫번째: $i');
  }

  for (var item in list) {
    print('두번째: $item');
  }

  List.generate(list.length, (i) {
    print('3번째: $i');
  });
}

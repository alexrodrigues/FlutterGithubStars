import 'package:flutter_test/flutter_test.dart';
import 'package:github_stars/providers/stars_provider.dart';

void main() {
  group('testing provider api', () {
    setUp(() async {
      final vos = await StarsProvider().pageResponse;
      test('integration', () {
        expect(vos.items.length, equals(3));
      });
    });
  });
}

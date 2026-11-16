# Query String Builder API - Dart/Flutter Client

Query String Builder converts JSON objects into properly formatted URL query strings with optional encoding.

[![pub package](https://img.shields.io/pub/v/apiverve_querystringbuilder.svg)](https://pub.dev/packages/apiverve_querystringbuilder)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Query String Builder API](https://apiverve.com/marketplace/querystringbuilder?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_querystringbuilder: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_querystringbuilder/apiverve_querystringbuilder.dart';

void main() async {
  final client = QuerystringbuilderClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'params': [object Object],
      'encode': true
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "queryString": "name=John%20Doe&age=30&city=New%20York&interests=coding&interests=music&interests=travel",
    "fullURL": "?name=John%20Doe&age=30&city=New%20York&interests=coding&interests=music&interests=travel",
    "encoded": true,
    "paramCount": 4
  }
}
```

## API Reference

- **API Home:** [Query String Builder API](https://apiverve.com/marketplace/querystringbuilder?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/querystringbuilder](https://docs.apiverve.com/ref/querystringbuilder?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)

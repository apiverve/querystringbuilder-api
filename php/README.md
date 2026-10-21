# Query String Builder API - PHP Package

Query String Builder converts JSON objects into properly formatted URL query strings with optional encoding.

## Installation

Install via Composer:

```bash
composer require apiverve/querystringbuilder
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Querystringbuilder\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'params' => [object Object],
    'encode' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Querystringbuilder\Client;
use APIVerve\Querystringbuilder\Exceptions\APIException;
use APIVerve\Querystringbuilder\Exceptions\ValidationException;

try {
    $response = $client->execute(['params' => [object Object], 'encode' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/querystringbuilder?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/querystringbuilder?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/querystringbuilder?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).

# Query String Builder API - Ruby Gem

Query String Builder converts JSON objects into properly formatted URL query strings with optional encoding.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_querystringbuilder'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_querystringbuilder
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_querystringbuilder'

# Initialize the client
client = APIVerve::Querystringbuilder::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  params: [object Object],
  encode: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ params: [object Object], encode: true })
  puts response["data"]
rescue APIVerve::Querystringbuilder::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Querystringbuilder::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Querystringbuilder::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
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

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/querystringbuilder?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/querystringbuilder?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/querystringbuilder?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).

"""
Query String Builder API - Basic Usage Example

This example demonstrates the basic usage of the Query String Builder API.
API Documentation: https://docs.apiverve.com/ref/querystringbuilder
"""

import os
import requests
import json

API_KEY = os.getenv('APIVERVE_API_KEY', 'YOUR_API_KEY_HERE')
API_URL = 'https://api.apiverve.com/v1/querystringbuilder'

def call_querystringbuilder_api():
    """
    Make a POST request to the Query String Builder API
    """
    try:
        # Request body
        request_body &#x3D; {
    &#x27;params&#x27;: {
        &#x27;name&#x27;: &#x27;John Doe&#x27;,
        &#x27;age&#x27;: 30,
        &#x27;city&#x27;: &#x27;New York&#x27;,
        &#x27;interests&#x27;: [
            &#x27;coding&#x27;,
            &#x27;music&#x27;,
            &#x27;travel&#x27;
        ]
    },
    &#x27;encode&#x27;: true
}

        headers = {
            'x-api-key': API_KEY,
            'Content-Type': 'application/json'
        }

        response = requests.post(API_URL, headers=headers, json=request_body)

        # Raise exception for HTTP errors
        response.raise_for_status()

        data = response.json()

        # Check API response status
        if data.get('status') == 'ok':
            print('✓ Success!')
            print('Response data:', json.dumps(data['data'], indent=2))
            return data['data']
        else:
            print('✗ API Error:', data.get('error', 'Unknown error'))
            return None

    except requests.exceptions.RequestException as e:
        print(f'✗ Request failed: {e}')
        return None

if __name__ == '__main__':
    print('📤 Calling Query String Builder API...\n')

    result = call_querystringbuilder_api()

    if result:
        print('\n📊 Final Result:')
        print(json.dumps(result, indent=2))
    else:
        print('\n✗ API call failed')

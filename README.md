# Mustermann Sinatra Extension

**ATTENTION** This extension is **deprecated**, since Sinatra > 2.0 Mustermann is used by default and the installation of this extension is not needed.

Only use this extension if you plan to use Sinatra versions under 2.0.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mustermann-sinatra-extension'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install mustermann-sinatra-extension

## Usage

With classic Sinatra application

```ruby
require 'sinatra'
require 'mustermann/extension'

register Mustermann::Extension
get('/:id', capture: /\d+/) { ... }
```

With modular Sinatra application

```ruby
require 'sinatra/base'
require 'mustermann/extension'

class MyApp < Sinatra::Base
  register Mustermann::Extension
  get('/:id', capture: /\d+/) { ... }
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sinatra/mustermann-sinatra-extension.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

# tmp_autoclean

Autoclean Rails `tmp` directory for local development. Keep your application stateless and storage clean.

## Installation

Add this line to your application's Gemfile and type `bundle install`:

```ruby
gem 'tmp_autoclean'
```

## Usage

Enable tmp directory autoclean:

Add line to `config/initializers/development.rb`

```ruby
Rails.application.configure do
  # other configrations ...

  config.tmp_autoclean_enable = true
end
```

That it. After next rails server start up `tmp/` folder will be cleaned.

## Configuration

Clean specific tmp files

Add `tmp_autoclean_options` line to `config/initializers/development.rb`

```ruby
Rails.application.configure do
  # other configrations ...

  config.tmp_autoclean_enable = true
  config.tmp_autoclean_options = %w[cache sockets pids screenshots] # full list of available options
end
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

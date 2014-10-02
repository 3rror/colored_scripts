# ColoredScripts

Ultra-minimal library to simplify the use of colors in ruby scripts.

## Installation

Add this line to your application's Gemfile:

    gem 'colored_scripts'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install colored_scripts

## Usage

```ruby
require "colored_scripts"
cs = ColoredScripts

puts cs.red("Hello world!")

puts cs.bold(cs.red("Bold red text here"))

puts cs.green_bg("green background")
```

## All options:

* bright / bold
* faint
* underline
* blink
* exchange
* hide
* black
* red
* green
* yellow
* blue
* magenta
* cyan
* white
* default
* black_bg
* red_bg
* green_bg
* yellow_bg
* blue_bg
* magenta_bg
* cyan_bg
* white_bg
* default_b
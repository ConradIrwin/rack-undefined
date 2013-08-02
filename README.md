rack-undefined replaces any parameters that have the value "undefined" or "null" by an honest Ruby nil.

## Installation

Like for any rubygem, you can do:

```shell
gem install rack-undefined
```

Or add it to your Gemfile:

```ruby
gem 'rack-undefined'
```

## Introduction

Some javascript libraries, that shall remain [zepto](http://zeptojs.com/), like to send the string "undefined" if you serialize an object with undefined values.

This library fixes that problem at the rack level, so your rails app doesn't need to care. The benefits of this should be obvious:

1. Transparently fixes `validates_presence_of` without needing to monkey patch.
2. Saves space in your database, the null byte is waay smaller than the word "null".
3. Simplifies `if foo.nil? || foo == "undefined"` into just `if foo.nil?`.

## Example

```
curl http://localhost:9292/?foo=bar&baz=undefined
params == {foo: "bar", baz: nil}
```

## Testimonials

* "This library is awesome, it removes the temptation for me to use badly coded websites." — John M. Null, CA
* "undefined is not a function, man" — Steve Toner.

## TODO

* ruby-1.9 support
* (maybe) handle typos (like null or nudefined)

## Meta-fu

Dual licensed under WTFPL and MIT (see LICENSE.MIT for details).

<small>In case you didn't realise yet, it is a joke, please don't use it.</small>

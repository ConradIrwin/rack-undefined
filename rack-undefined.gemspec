Gem::Specification.new do |s|
  s.name = "rack-undefined"
  s.version = "0.2"
  s.homepage = "http://github.com/ConradIrwin/rack-undefined"
  s.summary = "Replaces 'undefined' and 'null' parameters with nil."
  s.description = "Now you don't have to worry about bugs in your javascript code anymore!"
  s.licenses = ['MIT', 'WTFPL']

  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.0'

  s.authors = ["Conrad Irwin"]
  s.email = "conrad.irwin@gmail.com"

  s.files = `git ls-files`.split("\n")
  s.require_path = "lib"
  s.add_dependency 'rack'
  s.add_dependency 'funkify'
end

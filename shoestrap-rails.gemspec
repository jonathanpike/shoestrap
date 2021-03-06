lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shoestrap-rails/version'

Gem::Specification.new do |s|
  s.name     = 'shoestrap-rails'
  s.version  = Shoestrap::VERSION
  s.authors  = ['Jonathan Pike']
  s.email    = 'jonathan.d.s.pike@gmail.com'
  s.summary  = 'Shoestrap: Bootstrap 3, but just a subset.'
  s.description = 'Shoestrap is a small subset of Bootstrap 3 with only core grid system, typography and layout components.'
  s.homepage = 'https://github.com/jonathanpike/shoestrap'
  s.license  = 'MIT'

  s.add_runtime_dependency 'sass', '~> 3.3'
  s.add_runtime_dependency 'autoprefixer-rails', '~> 5.2'

  # Testing dependencies
  s.add_development_dependency 'minitest', '~> 5.8'
  s.add_development_dependency 'minitest-reporters', '~> 1.1'
  # Integration testing
  s.add_development_dependency 'capybara', '~> 2.5'
  s.add_development_dependency 'poltergeist', '~> 1.8'
  # Dummy Rails app dependencies
  s.add_development_dependency 'actionpack', '~> 4.1'
  s.add_development_dependency 'activesupport', '~> 4.1'
  s.add_development_dependency 'json', '~> 1.8'
  s.add_development_dependency 'sprockets-rails', '~> 2.1'
  s.add_development_dependency 'jquery-rails', '~> 3.1'
  s.add_development_dependency 'slim-rails', '~> 3.0'
  s.add_development_dependency 'uglifier', '~> 2.7'

  s.files      = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- test/*`.split("\n")
end
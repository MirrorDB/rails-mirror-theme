# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mirror_theme/version'

Gem::Specification.new do |spec|
  spec.name          = 'mirror_theme'
  spec.version       = MirrorTheme::VERSION
  spec.authors       = ['Ilton Garcia dos Santos Silveira']
  spec.email         = ['ton.garcia.jr@gmail.com']
  spec.summary       = 'MirrorDBFramework RailsTheme based on MaterializeCSS'
  spec.description   = 'MirrorDBFramework RailsTheme based on MaterializeCSS which is based on Google Material Design specification'
  spec.homepage      = 'http://mirrordb.github.io/rails-mirror-db/'
  spec.license       = 'MIT'

  spec.bindir        = 'exe'
  spec.require_paths = ['lib']
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  spec.test_files = Dir['test/**/*']

  #================== GEMs to build it GEM, so its improve the development ==============================
  # Base GEMs to build it gem
  spec.add_development_dependency 'rake', '~> 10.0', '>= 10.0'
  spec.add_development_dependency 'bundler', '~> 1.10.a', '>= 1.10.a'

  # RSpec for tests
  spec.add_development_dependency 'rspec', '~> 3.1', '>= 3.1.0'
  # Coverage
  spec.add_development_dependency 'simplecov', '~> 0.7', '>= 0.7.1'
  # Create readable attrs values
  spec.add_development_dependency 'faker', '~> 1.4', '>= 1.4.2'
  # SGBD connector
  spec.add_development_dependency 'mysql2', '~> 0.3.18', '>= 0.3.18'

  #================== GEMs to be used when it is called on a project ====================================
  # To pretty print on console
  spec.add_dependency 'colorize', '~> 0.7.3', '>= 0.7.3'
  spec.add_dependency 'rails', '~> 4.2.1', '>= 4.2.1'
end

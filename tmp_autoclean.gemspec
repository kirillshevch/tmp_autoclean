$:.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'tmp_autoclean/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'tmp_autoclean'
  spec.version     = TmpAutoclean::VERSION
  spec.authors     = ['Kirill Shevchenko']
  spec.email       = ['hello@kirillshevch.com']
  spec.homepage    = 'https://github.com/kirillshevch/tmp_autoclean'
  spec.summary     = 'Autoclean Rails tmp directory'
  spec.description = spec.summary
  spec.license     = 'MIT'

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails'
end

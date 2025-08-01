require File.expand_path('lib/fun_translations/version', __dir__) # (__dir__) путь относительно корня проекта - берем из файла version константу с версией проекта
# expand_path. Метод класса File в Ruby, который возвращает абсолютный путь файла, переданного в качестве аргумента. Также может принимать относительные пути. 
# Пример воврата -> "/home/alex/ruby-kruk/repeat/10/test" 
Gem::Specification.new do |spec|
  spec.name                  = 'fun_translations'
  spec.version               = FunTranslations::VERSION
  spec.authors               = ['Ilya Krukowski']
  spec.email                 = ['golosizpru@gmail.com']
  spec.summary               = ''
  spec.description           = ''
  spec.homepage              = 'https://github.com/bodrovis/fun_translations'
  spec.license               = 'MIT'
  spec.platform              = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.7.0'

  spec.files = Dir['lib/**/*.rb',
                   'fun_translations.gemspec',
                   'Gemfile']
  # spec.extra_rdoc_files = ['README.md']
  spec.require_paths    = ['lib']

  spec.add_dependency 'faraday', '~> 2.6'
  spec.add_dependency 'zeitwerk', '~> 2.4'

  spec.add_development_dependency 'rspec', '~> 3.6'
  spec.add_development_dependency 'simplecov', '~> 0.16'
  spec.add_development_dependency 'webmock', '~> 3.14'

  spec.metadata = {
    'rubygems_mfa_required' => 'true'
  }
end

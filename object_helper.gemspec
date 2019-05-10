lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'object_helper/version'

Gem::Specification.new do |spec|
  spec.name          = 'object_helper'
  spec.version       = ObjectHelper::VERSION
  spec.authors       = %w[ pengfei.shi ]
  spec.email         = %w[ spfzzz@163.com ]

  spec.summary       = ''
  spec.description   = 'Ruby object helper methods.'
  spec.homepage      = 'https://rubygems.org/gems/object_helper'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  raise StandardError, 'RubyGems 2.0 or newer is required to protect against public gem pushes.' unless spec.respond_to?(:metadata)
  spec.metadata['allowed_push_host'] = 'git@github.com:shipengfei/object_helper.git'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/shipengfei/object_helper'
  spec.metadata['changelog_uri'] = 'https://github.com/shipengfei/object_helper'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w[ lib ]

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end

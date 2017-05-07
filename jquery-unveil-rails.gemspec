# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jquery/unveil/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "jquery-unveil-rails"
  spec.version       = Jquery::Unveil::Rails::VERSION
  spec.authors       = ["Kirill"]
  spec.email         = ["c.derche@me.com"]

  spec.summary       = %q{Gem wrapper to include jquery.unveil library via the asset pipeline.}
  spec.description   = %q{This jquery.scrollbar was built using the library at https://raw.githubusercontent.com/luis-almeida/unveil}
  spec.homepage      = "https://github.com/cderche/jquery-unveil-rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

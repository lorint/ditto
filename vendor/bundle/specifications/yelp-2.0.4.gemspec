# -*- encoding: utf-8 -*-
# stub: yelp 2.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "yelp"
  s.version = "2.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tomer Elmalem", "Justin Cunningham", "Yelp"]
  s.date = "2014-10-16"
  s.description = "Provides easy way to interact with the Yelp API in any kind of application"
  s.email = ["telmalem@gmail.com", "partnerships@yelp.com"]
  s.homepage = "https://github.com/Yelp/yelp-ruby"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.4.6"
  s.summary = "Ruby client library for the Yelp API"

  s.installed_by_version = "2.4.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.5"])
      s.add_development_dependency(%q<rake>, [">= 10.0.0", "~> 10.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6"])
      s.add_development_dependency(%q<rspec-its>, ["~> 1.0.1"])
      s.add_development_dependency(%q<pry>, [">= 0.9.0", "~> 0.9"])
      s.add_development_dependency(%q<vcr>, [">= 2.8.0", "~> 2.8"])
      s.add_development_dependency(%q<webmock>, [">= 1.17.0", "~> 1.17"])
      s.add_development_dependency(%q<yard>, ["~> 0.8"])
      s.add_runtime_dependency(%q<faraday>, [">= 0.8.0", "~> 0.8"])
      s.add_runtime_dependency(%q<faraday_middleware>, [">= 0.8.0", "~> 0.8"])
      s.add_runtime_dependency(%q<simple_oauth>, ["< 0.3.0", ">= 0.2.0", "~> 0.2"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.5"])
      s.add_dependency(%q<rake>, [">= 10.0.0", "~> 10.0"])
      s.add_dependency(%q<rspec>, ["~> 2.6"])
      s.add_dependency(%q<rspec-its>, ["~> 1.0.1"])
      s.add_dependency(%q<pry>, [">= 0.9.0", "~> 0.9"])
      s.add_dependency(%q<vcr>, [">= 2.8.0", "~> 2.8"])
      s.add_dependency(%q<webmock>, [">= 1.17.0", "~> 1.17"])
      s.add_dependency(%q<yard>, ["~> 0.8"])
      s.add_dependency(%q<faraday>, [">= 0.8.0", "~> 0.8"])
      s.add_dependency(%q<faraday_middleware>, [">= 0.8.0", "~> 0.8"])
      s.add_dependency(%q<simple_oauth>, ["< 0.3.0", ">= 0.2.0", "~> 0.2"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.5"])
    s.add_dependency(%q<rake>, [">= 10.0.0", "~> 10.0"])
    s.add_dependency(%q<rspec>, ["~> 2.6"])
    s.add_dependency(%q<rspec-its>, ["~> 1.0.1"])
    s.add_dependency(%q<pry>, [">= 0.9.0", "~> 0.9"])
    s.add_dependency(%q<vcr>, [">= 2.8.0", "~> 2.8"])
    s.add_dependency(%q<webmock>, [">= 1.17.0", "~> 1.17"])
    s.add_dependency(%q<yard>, ["~> 0.8"])
    s.add_dependency(%q<faraday>, [">= 0.8.0", "~> 0.8"])
    s.add_dependency(%q<faraday_middleware>, [">= 0.8.0", "~> 0.8"])
    s.add_dependency(%q<simple_oauth>, ["< 0.3.0", ">= 0.2.0", "~> 0.2"])
  end
end

# -*- encoding: utf-8 -*-
# stub: will_paginate-materialize 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "will_paginate-materialize"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Patrick Lindsay"]
  s.bindir = "exe"
  s.date = "2015-10-02"
  s.description = "This gem integrates the MaterializeCSS pagination component with the will_paginate pagination gem."
  s.email = ["patrick.lindsay@sage.com"]
  s.homepage = "https://github.com/patricklindsay/will_paginate-materialize"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "MaterializeCSS pagination renderer for the will_paginate pagination gem."

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, ["~> 1.10"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_runtime_dependency(%q<will_paginate>, ["~> 3.0.6"])
    else
      s.add_dependency(%q<bundler>, ["~> 1.10"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<will_paginate>, ["~> 3.0.6"])
    end
  else
    s.add_dependency(%q<bundler>, ["~> 1.10"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<will_paginate>, ["~> 3.0.6"])
  end
end

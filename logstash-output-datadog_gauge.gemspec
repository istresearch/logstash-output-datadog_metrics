Gem::Specification.new do |s|

  s.name            = 'logstash-output-datadog_gauge'
  s.version         = '0.0.1'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "Send gauge metrics to DataDogHQ based on Logstash events."
  s.description     = "This gem is a Logstash plugin required to be installed on top of the Logstash core pipeline. You must manually edit the Logstash Gemfile"
  s.authors         = ["IST Research"]
  s.require_paths = ["lib"]

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core-plugin-api", "~> 1.0"
  s.add_runtime_dependency "logstash-codec-plain", '>= 1.0.0'

  s.add_development_dependency 'logstash-devutils'
end

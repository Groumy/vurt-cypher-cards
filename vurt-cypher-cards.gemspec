# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "vurt-cypher-cards"
  spec.version       = '1.0'
  spec.authors       = ["Dominic Richard"]
  spec.email         = ["groumy@gmail.com"]
  spec.summary       = %q{Cypher card generator}
  spec.description   = %q{Generator of card reprensenting Cyphers from the Vurt - The Roleplaying game}
  spec.homepage      = "N/A"
  spec.license       = "MIT"

  spec.files         = ['lib/vurt-cypher-cards.rb']
  spec.executables   = ['bin/vurt-cypher-cards']
  spec.test_files    = ['tests/test_vurt-cypher-cards.rb']
  spec.require_paths = ["lib"]
end
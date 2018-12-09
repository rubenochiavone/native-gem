Gem::Specification.new do |s|
  s.name    = "native"
  s.version = "0.0.1"
  s.summary = "Native Gem"
  s.author  = "Ruben O. Chiavone"

  s.files = Dir.glob("ext/**/*.{c,rb}")

  s.extensions << "ext/native/extconf.rb"

  s.add_development_dependency "rake-compiler"
end


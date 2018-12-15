require 'rake/extensiontask'
require 'rake/testtask'

spec = Gem::Specification.load('native.gemspec')
Rake::ExtensionTask.new('native', spec)

Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/test_*.rb']
end

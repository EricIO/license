$:.push File.expand_path("../lib", __FILE__)
require_relative 'lib/version'

Gem::Specification.new do |gem|
	gem.name         = 'licenser'
	gem.version      = License::VERSION.dup
	gem.platform     = Gem::Platform::RUBY
	gem.date         = '2015-05-01'
	gem.summary      = 'Inserts license information for your project'
	gem.description  = 'License creates license files for your project automatically so that you don\'t need to do that manually'
	gem.authors      = ['Eric Skoglund']
	gem.email        = 'eric@pagefault.se'
	gem.files        = Dir.glob("{bin,lib,data}/**/*") 
	gem.require_path = 'lib'
	gem.executables  = ['license']
	gem.homepage     = 'http://github.com/EricIO/license'
	gem.license      = 'GPLv3'
end

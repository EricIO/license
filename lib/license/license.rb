require 'fileutils'

module License
	class LicenseObject
		def initialize(license, outfile = "LICENSE")
			@license =  license
			@outfile = outfile
		end

		def parse_license
			puts @license
			FileUtils.cp("/home/eric/programming/projects/license/data/gplv3", "./#{@outfile}")			
		end
	end
end

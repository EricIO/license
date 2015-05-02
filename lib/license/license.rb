require 'fileutils'

module License
	class LicenseObject
		def initialize(license, outfile = "LICENSE")
			@license =  license
			@outfile = outfile
		end

		def parse_license
			if License::LICENSES.include? @license
				FileUtils.cp(License::PATH + "/data/#{@license}", "#{@outfile}")
			else
				puts "Unsupported license please use --list to show all supported licenses"
				exit
			end
		end
	end
end

module License
	class Application < Clamp::Command
		option ["-l", "--list"], "", "List all supported licenses and exit" do
			License::LICENSES.each do |license|
				puts license
			end
			exit
		end

		option ["-o", "--outfile"], "OUT", "Specify license file name", :default => "LICENSE"
		
		parameter "LICENSE", "Name of license that is to be inserted. Use --list to see a list of available licenses", :attribute_name => :license

		def execute
			License::LicenseObject.new(license, outfile).parse_license
		end
	end
end

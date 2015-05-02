# TODO
# Make this automated

module License
	LICENSES = `ls --ignore="*.small" data/`.split("\n")
end

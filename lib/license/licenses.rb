# TODO
# Make this automated

module License
	LICENSES = `ls --ignore="*.notice" data/`.split("\n")
end

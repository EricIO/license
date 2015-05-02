module License
	LICENSES = `ls --ignore="*.notice" #{License::PATH}/data`.split("\n")
end

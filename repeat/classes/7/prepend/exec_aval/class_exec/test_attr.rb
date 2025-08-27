class Pavel
  attr_reader([:one,:two,:three])
end

pavel = Pavel.new
pavel.public_methods false
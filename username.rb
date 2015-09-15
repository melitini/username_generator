# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)
	 if first === ""
	 	return nil
	 elsif last === ""
	 	return nil
	 else
	 	fd = first.downcase.gsub(/[^a-z]/i, "")
	 	ld = last.downcase.gsub(/[^a-z]/i, "")
	 	fd[0] + ld
	 end 
end

def format_year(year)
	# year.to_s
	new_year = year[2..3]
end


# def build_username(**arg)
# 	arg.first
#   something.format_name

# end
1999
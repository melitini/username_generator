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
	if year.to_s.length == 4
		new_year = year.to_s[2..3]
	else 
		return nil
	end
end

 def build_username(first, last, year, type = 0)
 	user_name = format_name(first, last) + format_year(year)
 	if type == 1
 		t = "seller-"
 	elsif type == 2
 		t = "manager-"
 	elsif type == 3
 		t = "admin-"
 	else 
 		t = ""
	end
	t + user_name
 end

def generate_username(first, last, year, level=0)
  username = build_username(first, last, year, level)

  if $user_counts[username].nil?
    $user_counts[username] = 0; # initialize count at zero
    username
  else
    $user_counts[username] +=1 # increment username count
    user_count = $user_counts[username].to_s
    username + "_" + user_count
  end
end




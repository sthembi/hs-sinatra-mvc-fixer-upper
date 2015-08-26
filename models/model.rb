# Tells which transport mechanism to take
def transport_decision(location, miles)
  # miles < 3, then pogostick
  if miles.to_i < 3   #correct convert string to integer
		"To get to #{location}, you should take a pogo stick!"
  else   # else, then segway
		"To get to #{location}, you should take a segway!"
	end
end
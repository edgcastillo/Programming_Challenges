def calculate_bill_for_roommate(gas,electric,rent,number_rooms)
	subTotal = gas + electric + rent
	total = subTotal / number_rooms
	puts total
end


calculate_bill_for_roommate(93.11,72.71,3100,4)

p "KnapSack!"

# Items with corresponding weights and values
weight = [3, 9, 2, 1, 7, 3, 11]
value  = [5, 7, 4, 3, 5, 2, 30]

# Weight capacity of knapsack
capacity = 10

# Function that takes in current item index and 
# current weight capacity of knapsack
# Returns value of KnapSack
def knap_sack indx, capacity

	value = nil

	# We've gone through all items or reached the weight limit of the knapsack
	if indx < 0 || capacity == 0
		value = 0

	# If weight of current item exceeds ks capacity, move on to nex item
	elsif weight[indx] > capacity
		value = knap_sack indx - 1, capacity

	# Evaluate value to be greatest value between putting the item in the ks and moving on
	# to the next item or leaving item and moving on
	else
		move_on = knap_sack index - 1, capacity

		put_in = value[indx] + knap_sack index - 1, capacity - weight[indx]

		value = [move_on, put_in].max
		
	value

end	
# Pack consecutive duplicates of list elements into sublists.
def pack array
	pack,j =[],0
	while j <= array.count-1
		sublist = []
		if array[j] == array[j+1]
			until array[j] != array[j+1]
				sublist << array[j]
				j = j+1
			end
			sublist << array[j]
		else
			pack << array[j]
		end
		j = j+1
	pack << sublist if sublist != []
	end
	print pack
end

array =  gets.split
pack array
puts


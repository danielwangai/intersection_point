module IntersectPoint
	class Point
		def self.point(t, s1, s2)
			# where s1 and s2 are the speeds of car 1 and 2 respectively
			# t is the time used by car 2
			# note that the the first car starts 2 hours earlier

			# creating a check to see if the speed of first car is greater than or equal to the second car
			# in which case the two cars will never meet
			if s1 >= s2
				return 'Change your speeds. the two cars will never meet!'
			else
				# setting a general case i.e. the speeds of the cars are manually set.
				time_car1 = t + 2

				# now we have the starting times of both cars

				# calculate the distance (distance = speed * time)

				distance_car1 = s1 * time_car1
				distance_car2 = s2 * t

				# find the POSITIVE difference between the two distances
				meetingPoint = (distance_car1 - distance_car2).abs

				# the abs function gets the absolute value of the difference(positive value)

				# create another check to make sure that the two cars meet within the stipulated distance i.e. 1000km
				if meetingPoint <= 1000
					return meetingPoint
				else
					return "Alter your values. The cars should meet at a point within 1000km"
				end
			end
		end
	end
end
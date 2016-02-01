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
				return "Alter your values. The cars should meet at a point within 1000km"
			end
		end
	end
end
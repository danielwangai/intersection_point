require 'spec_helper'
require "intersect_point"

describe IntersectPoint::Point do
	it "Speed of car 1 greater than car 2 - Car 2 will never catch up hence never intersect" do
		expect(IntersectPoint::Point.point(4, 80, 40)).to eql('Change your speeds. the two cars will never meet!')
	end
	it "meeting point less than 1000km - Ideal case" do
		# expect(IntersectPoint::Point.point(4, 80, 120)).should be < 1000
		mt_pt = IntersectPoint::Point.point(4, 80, 120).should be <= 1000
	end

	it "meeting point is greater than the threshold i.e. 1000km" do
		expect(IntersectPoint::Point.point(4, 10, 300)).to eql('Alter your values. The cars should meet at a point within 1000km')
	end
end

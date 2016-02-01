require 'spec_helper'
require "intersect_point"

describe IntersectPoint::Point do
	it "Speed of car 1 greater than car 2 - Car 2 will never catch up hence never intersect" do
		expect(IntersectPoint::Point.point(4, 80, 40)).to eql('Change your speeds. the two cars will never meet!')
	end
end

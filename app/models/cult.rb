class Cult
attr_accessor :name, :location, :founding_year

@@all = []

def initialize(name, location, founding_year)
  @name = name
  @location = location
  @founding_year = founding_year
 @@all << self
end

def self.all
  @@all
end

def recruit_follower(name_of_a_follower)
end

def cult_population
  Followers.all.select do |follower|
    follower.cult = self
  end
end

##

def find_by_name(string)
  @@all.select do |cult|
    cult.name == string
  end
end

def find_by_location(location)
  @@all.select do |cult|
    cult.location == location
  end
end

def find_by_founding_year(year)
  @@all.select do |cult|
    cult.year == year
  end
end

def average_age
  self.cult_population

end

end

# chris = Cult.new('chris', 'Seattle', 1990)
#
# puts chris.name

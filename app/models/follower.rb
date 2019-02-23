class Follower
  attr_accessor :name, :age, :life_motto, :cult

  @@all = []
  def initialize(name, age)
    @name = name
    @age = age
    @life_motto = ""
    @@all << self
    @cult = "" ## should this be filled in by initiation date
  end

  def of_a_certain_age(age)
    @@all.select do |follower|
      follower.age >= age
    end
  end

  def join_cult(cult)
    BloodOath.new(Date.now, self, cult)
  end

  def self.all
    @@all
  end

end

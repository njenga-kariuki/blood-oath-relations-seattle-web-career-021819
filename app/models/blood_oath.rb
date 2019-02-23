
class BloodOath
  attr_accessor :initiation_date

  @@all = []

  def initialize(initiation_date, follower, cult)
    @initiation_date = initiation_date
    @follower = follower
    @cult = cult
    follower.cult = cult ## is this right way to associate the follower to cult at time of initation??
  end

  def self.all
    @@all
  end
end


###HOW TO LINK INITI




### need to initiate a follwoer into a cult on a date








=begin

BloodOath

BloodOath#initiation_date
returns a String that is the initiation date of this blood oath in the format YYYY-MM-DD.
BloodOath.all
returns an Array of all the blood oaths

=end

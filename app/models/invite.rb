class Invite < ActiveRecord::Base
  belongs_to :event
  belongs_to :guest, :class_name => "User"

  def guest_name=(name)
    self.guest = User.find_or_create_by(:name => name)
  end
 
  def guest_name
    self.guest.name if self.guest
  end


end

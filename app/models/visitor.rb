#app/models/visitor.rb
class Visitor < ActiveRecord::Base
  has_no_table
  column :email, :string
  validates_presence_of :email
  validates_format_of :email, :with => /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  
  def subscribe
    mailchimp = Gibbon::API.new
    result = mailchimp.lists.subscribe({
      :id => ENV['MAILCHIMP_LIST_ID'],
      :email => {:email => self.email},
      :double_optin => false,
      :update_existing => true,
      :send_welcome => true
      })
    Rails.logger.info("Subscibed #{self.email} to MailChip") if result
  end

  FIGURE =
  
  { 
  
  A: "AppleJack", B: "Big MacIntosh", C: "Fluttershy II", D: "Pinkie Pie",
  
  E: "Rainbow Dash", F: "Rarity", G: "Amethyst STar II", H: "ShoeShine II",
  
  I: "Noteworthy", K: "Sea Swirl", L: "Berryshine II", M: "Princess Cadance II",
  
  N: "Peachy Sweet II", O: "Lily Valley", P: "Nurse Snowheart", R: "Sprinkle Medley",
  
  S: "Tropical Storm", T: "Mr. Carrot Cake", U: "Green Jewel", V: "Lavender Fritter",
  
  W: "Apple Honey", X: "Honey Rays", Y: "Prism Glider", Z: "Grape Delight"
  
  }



end
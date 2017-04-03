class School < ActiveRecord::Base

if Rails.env.development?
has_attached_file :image, styles: { large: "500x300>", medium: "200x200>", thumb: "100x100>" }, default_url: "missing.png"
validates_attachment_content_type :image, {content_type: /\Aimage\/.*\z/}


else

  has_attached_file :image, styles: { large: "500x300>", medium: "200x200>", thumb: "100x100>" }, default_url: "missing.png",

  					:storage => :dropbox,
    				:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    				:path => ":style/:id_:filename"
					validates_attachment_content_type :image, {content_type: /\Aimage\/.*\z/}
end

 validates :name_of_the_principal, :board, :typ, :name_of_the_principal, :address, :contact_person, :contact_number, :email, :website, presence: true 
 validates :contact_number,  :numericality => true
 validates_length_of :contact_number, :maximum => 10
 validates_length_of :contact_number, :minimum => 10
 validates_attachment_presence :image
end


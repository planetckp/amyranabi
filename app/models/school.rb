class School < ActiveRecord::Base

if Rails.env.development?
has_attached_file :image, styles: { medium: "200x>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :image, {content_type: /\Aimage\/.*\z/}


else

  has_attached_file :image, styles: { medium: "200x>", thumb: "100x100>" }, default_url: "/images/:style/missing.png",

  					:storage => :dropbox,
    				:dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    				:path => ":style/:id_:filename"
					validates_attachment_content_type :image, {content_type: /\Aimage\/.*\z/}
end
end


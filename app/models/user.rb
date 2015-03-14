class User < ActiveRecord::Base
	has_many :photos
	has_attached_file :avatar
	has_many :user_places
	has_many :user_place_categories, through: :user_places
	has_many :matches
	validates :name, :email, presence: true
	#has_attached_file :image
	#validates_attachment :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	has_many :authorizations
	# in case we ever include oauth beyond FB, eg Twitter, Insta, etc
	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	def add_provider(auth_hash)
  	# Check if the provider already exists, so we don't add it twice
	  unless authorizations.find_by_provider_and_uid(auth_hash["provider"], auth_hash["uid"])
	    Authorization.create user: self, provider: auth_hash["provider"], uid: auth_hash["uid"]
  	end
  
  end
end

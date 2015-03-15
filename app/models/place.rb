class Place < ActiveRecord::Base
	has_many :place_categories
	has_many :user_places
	

	def yelp_search(str,loc) 
		response = []
		places = Yelp.client.search(loc, { term: str }).businesses
    places.each do |p|
      place = Place.find_or_create_by(:name => p.name, yelpid: p.id)
      response << place
      p.categories.each do |c|
        cat = Category.find_or_create_by(:name => c[1], friendly_name: c[0])
        place.place_categories.create(category: cat)      
       end
    end
    response
	end


end

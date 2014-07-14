class Micropost < ActiveRecord::Base
	validates :content, length: {maximum: 140 }
end

class User < ActiveRecord::Base
	has_many :Microposts
end

class Micropost < ActiveRecord::Base
	belongs_to :user
	validates :content, length: {maximum: 140}
end
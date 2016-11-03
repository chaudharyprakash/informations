class Information < ApplicationRecord
	 validates_uniqueness_of :ip
end

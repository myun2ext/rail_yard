class AppGem < ActiveRecord::Base
  validates :name, uniqueness: { message: ": Duplicated gem." }
end

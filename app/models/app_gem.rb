class AppGem < ActiveRecord::Base
  validates :name, uniqueness: { message: ": Duplicated gem." }, presence: true
end

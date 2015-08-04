class AppModel < ActiveRecord::Base
  validates :name, uniqueness: { message: ": Duplicated model." }, presence: true
end

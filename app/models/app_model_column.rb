class AppModelColumn < ActiveRecord::Base
  self.inheritance_column = :_type_disabled
  belongs_to :app_model
  validates :app_model, presence: true
  validates :name,
    uniqueness: { message: ": Duplicated column in model.", scope: :app_model }, presence: true
  validates :type, presence: true
end

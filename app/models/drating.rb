class Drating < ApplicationRecord
  
  belongs_to :user
  belongs_to :dquiz
end

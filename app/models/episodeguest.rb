class Episodeguest < ApplicationRecord
  belongs_to :episode
  belongs_to :guest
end

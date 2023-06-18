class IntroductionJunre < ApplicationRecord
  
  has_many :introductions , dependent: :destroy
  
end

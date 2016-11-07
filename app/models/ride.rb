class Ride < ApplicationRecord
  enum park: [:water, :magic_kingdom, :animal_kingdom, :studios]
end
